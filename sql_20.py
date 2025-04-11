import tkinter as tk
from tkinter import ttk
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
        cursor.execute("SELECT visitor_id, room_id, check_in_date, check_out_date FROM bookings WHERE visitor_id LIKE ?", ('%' + search_query + '%',))
    else:
        cursor.execute("SELECT visitor_id, room_id, check_in_date, check_out_date FROM bookings")

    rows = cursor.fetchall()

    # Lisa andmed tabelisse
    for row in rows:
        tree.insert("", "end", values=row)

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