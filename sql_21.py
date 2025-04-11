import tkinter as tk
from tkinter import ttk
from tkinter import messagebox
import sqlite3
import subprocess



#Funktsioon, mis laadib andmed SQLite andmebaasist ja sisestab need Treeview tabelisse
def load_data_from_db(tree):
    # Loo ühendus SQLite andmebaasiga
    conn = sqlite3.connect('majutus.db')
    cursor = conn.cursor()

    # Tee päring andmebaasist andmete toomiseks
    cursor.execute("SELECT visitor_id, room_id, check_in_date, check_out_date FROM bookings")
    rows = cursor.fetchall()

    # Lisa andmed tabelisse
    for row in rows:
        tree.insert("", "end", values=row)


#Funktsioon, mis laadib andmed SQLite andmebaasist ja sisestab need Treeview tabelisse
def load_data_from_db(tree, search_query=""):
    # Puhasta Treeview tabel enne uute andmete lisamist
    for item in tree.get_children():
        tree.delete(item)

    # Loo ühendus SQLite andmebaasiga
    conn = sqlite3.connect('majutus.db')
    cursor = conn.cursor()

    # Tee päring andmebaasist andmete toomiseks
    if search_query:
        cursor.execute("SELECT id, visitor_id, room_id, check_in_date, check_out_date FROM bookings WHERE visitor_id LIKE ?", ('%' + search_query + '%',))
    else:
        cursor.execute("SELECT id, visitor_id, room_id, check_in_date, check_out_date FROM bookings")

    rows = cursor.fetchall()

    # Lisa andmed tabelisse
    for row in rows:
        tree.insert("", "end", values=row[1:], iid=row[0])  # iid määratakse ID-ks

    # Sulge ühendus andmebaasiga
    conn.close()

root = tk.Tk()
root.title("bookings")

#Otsingufunktsioon
def on_search():
    search_query = search_entry.get()
    load_data_from_db(tree, search_query)

# Loo otsinguväli ja nupp
search_frame = tk.Frame(root)
search_frame.pack(pady=10)

search_label = tk.Label(search_frame, text="Otsi id järgi check in ja outi:")
search_label.pack(side=tk.LEFT)

search_entry = tk.Entry(search_frame)
search_entry.pack(side=tk.LEFT, padx=10)

search_button = tk.Button(search_frame, text="Otsi", command=on_search)
search_button.pack(side=tk.LEFT)

# Avab lisamise faili
def add_data():
    subprocess.run(["python", "sq_19.py"])

# Loo nupp, mis avab 01.py
open_button = tk.Button(root, text="Lisa andmeid", command=add_data)
open_button.pack(pady=20)


# Funktsioon, mis näitab valitud rea ID-d
def on_update():
    selected_item = tree.selection()  # Võta valitud rida
    if selected_item:
        record_id = selected_item[0]  # iid (ID)
        print(f"Valitud ID: {record_id}")
        open_update_window(record_id)
    else:
        print("Vali kõigepealt rida!")
        messagebox.showinfo("Tähelepanu", "Vali kõigepealt rida!")

# Lisa Uuenda nupp, mis näitab selekteeritud rea ID-d
update_button = tk.Button(root, text="Uuenda", command=on_update)
update_button.pack(pady=10)

# Funktsioon, mis uuendab andmed andmebaasis
def update_record(record_id, entries, window):
    # Koguge andmed sisestusväljadest
    visitor = entries["Külaline"].get()
    room = entries["Ruum"].get()
    chkin = entries["Check In"].get()
    chkout = entries["Check Out"].get()


    # Andmete uuendamine andmebaasis
    conn = sqlite3.connect('majutus.db')
    cursor = conn.cursor()
    cursor.execute("""
        UPDATE bookings
        SET visitor_id=?, room_id=?, check_in_date=?, check_out_date=?
        WHERE id=?
    """, (visitor, room, chkin, chkout, record_id))
    conn.commit()
    conn.close()

    # Värskenda Treeview tabelit
    load_data_from_db(tree)

    # Sulge muutmise aken
    window.destroy()

    messagebox.showinfo("Salvestamine", "Andmed on edukalt uuendatud!")

# Funktsioon, mis avab uue akna andmete muutmiseks
def open_update_window(record_id):
    # Loo uus aken
    update_window = tk.Toplevel(root)
    update_window.title("Muuda inimese andmeid")

    # Loo andmebaasi ühendus ja toomine olemasolevad andmed
    conn = sqlite3.connect('majutus.db')
    cursor = conn.cursor()
    cursor.execute("SELECT visitor_id, room_id, check_in_date, check_out_date FROM bookings WHERE id=?", (record_id,))
    record = cursor.fetchone()
    conn.close()

    # Veergude nimed ja vastavad sisestusväljad
    labels = ["Külaline", "Ruum", "Check In", "Check Out"]
    entries = {}

    for i, label in enumerate(labels):
        tk.Label(update_window, text=label).grid(row=i, column=0, padx=10, pady=5, sticky=tk.W)
        entry = tk.Entry(update_window, width=50)
        entry.grid(row=i, column=1, padx=10, pady=5)
        entry.insert(0, record[i])
        entries[label] = entry

    # Salvestamise nupp
    save_button = tk.Button(update_window, text="Salvesta", command=lambda: update_record(record_id, entries, update_window))
    save_button.grid(row=len(labels), column=0, columnspan=2, pady=10)

# Funktsioon, mis näitab valitud rea ID-d ja avab muutmise vormi
def on_update():
    selected_item = tree.selection()  # Võta valitud rida
    if selected_item:
        record_id = selected_item[0]  # iid (ID)
        open_update_window(record_id)
    else:
        messagebox.showwarning("Valik puudub", "Palun vali kõigepealt rida!")


# Ühendatud funktsioon kustutamiseks
def on_delete():
    selected_item = tree.selection()  # Võta valitud rida
    if selected_item:
        record_id = selected_item[0]  # iid (ID)
        confirm = messagebox.askyesno("Kinnita kustutamine", "Kas oled kindel, et soovid selle rea kustutada?")
        if confirm:
            try:
                # Loo andmebaasi ühendus
                conn = sqlite3.connect('majutus.db')
                cursor = conn.cursor()
               
                # Kustuta kirje
                cursor.execute("DELETE FROM bookings WHERE id=?", (record_id,))
                conn.commit()
                conn.close()
               
                # Värskenda Treeview tabelit
                load_data_from_db(tree)
               
                messagebox.showinfo("Edukalt kustutatud", "Rida on edukalt kustutatud!")
            except sqlite3.Error as e:
                messagebox.showerror("Viga", f"Andmebaasi viga: {e}")
    else:
        messagebox.showwarning("Valik puudub", "Palun vali kõigepealt rida!")

# Lisa Kustuta nupp, mis kustutab selekteeritud rea
delete_button = tk.Button(root, text="Kustuta", command=on_delete)
delete_button.pack(pady=10)


# Loo raam kerimisribaga
frame = tk.Frame(root)
frame.pack(pady=20, fill=tk.BOTH, expand=True)
scrollbar = tk.Scrollbar(frame)
scrollbar.pack(side=tk.RIGHT, fill=tk.Y)


# Loo tabel (Treeview) andmete kuvamiseks
tree = ttk.Treeview(frame, yscrollcommand=scrollbar.set, columns=("Külaline", "Ruum", "Check In", "Check Out"), show="headings")
tree.pack(fill=tk.BOTH, expand=True)


# Seosta kerimisriba tabeliga
scrollbar.config(command=tree.yview)


# Määra veergude pealkirjad ja laius
tree.heading("Külaline", text="Külaline")
tree.heading("Ruum", text="Ruum")
tree.heading("Check In", text="Check In")
tree.heading("Check Out", text="Check Out")


tree.column("Külaline", width=150)
tree.column("Ruum", width=150)
tree.column("Check In", width=150)
tree.column("Check Out", width=150)



# Lisa andmed tabelisse
load_data_from_db(tree)

# Käivita Tkinteri tsükkel
root.mainloop()