import tkinter as tk
from tkinter import messagebox
import sqlite3

# Loo Tkinteri aken
root = tk.Tk()
root.title("andmete sisestamine")


# validate_data funktsioon, mis kontrollib kas sisestatud andmed on korrektsed
def validate_data():
    room = entries["Ruum"].get()
    kyl = entries["Külaline"].get()
    IN = entries["Check In"].get()
    OUT = entries["Check Out"].get()

    if not room:
        tk.messagebox.showerror("Viga", "Ruum on kohustuslik!")
        return
    
    if not kyl:
        tk.messagebox.showerror("Viga", "Külaline on kohustuslik!")
        return
    
    if not IN:
        tk.messagebox.showerror("Viga", "Check In on kohustuslik!")
        return
    
    if not OUT:
        tk.messagebox.showerror("Viga", "Check Out on kohustuslik!")
        return
    return True

def insert_data():
    print("juhhhhuuuuuuuuuuu")
    if validate_data():
        connection = sqlite3.connect("majutus.db")
        cursor = connection.cursor()

        cursor.execute("""
            INSERT INTO bookings(visitor_id, room_id, check_in_date, check_out_date)
            VALUES (?, ?, ?, ?)
        """, (
            entries["Külaline"].get(),
            entries["Ruum"].get(),
            entries["Check In"].get(),
            entries["Check Out"].get(),
        ))

        connection.commit()
        connection.close()
        
    else:
        tk.messagebox.showerror("Viga", "Andmeid ei laetud üles!")
    


# Loo sildid ja sisestusväljad
labels = ["Külaline", "Ruum", "Check In", "Check Out"]
entries = {}

for i, label in enumerate(labels):
    tk.Label(root, text=label).grid(row=i, column=0, padx=10, pady=5)
    entry = tk.Entry(root, width=40)
    entry.grid(row=i, column=1, padx=10, pady=5)
    entries[label] = entry

# Loo nupp andmete sisestamiseks
submit_button = tk.Button(root, text="Sisesta andmed", command=insert_data)
submit_button.grid(row=len(labels), column=0, columnspan=2, pady=20)


# Näita Tkinteri akent
root.mainloop()