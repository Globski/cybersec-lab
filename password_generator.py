import tkinter as tk
from tkinter import messagebox
import secrets
import string

# Password Generation Function
def generate_password(length, use_upper, use_lower, use_digits, use_special):
    # Ensure password length is at least 12 characters
    if length < 12:
        raise ValueError("Password length should be at least 12 characters.")
    
    # Initialize the character pool and password list
    char_pool = ""
    password = []

    # Add character sets to the pool based on user choices
    if use_upper:
        char_pool += string.ascii_uppercase
        password.append(secrets.choice(string.ascii_uppercase))  # Ensure at least one uppercase
    if use_lower:
        char_pool += string.ascii_lowercase
        password.append(secrets.choice(string.ascii_lowercase))  # Ensure at least one lowercase
    if use_digits:
        char_pool += string.digits
        password.append(secrets.choice(string.digits))  # Ensure at least one digit
    if use_special:
        special_chars = "!@#$%^&*()-_=+[]{}|;:,.<>?/~"
        char_pool += special_chars
        password.append(secrets.choice(special_chars))  # Ensure at least one special character

    # Raise an error if no character sets are selected
    if not char_pool:
        raise ValueError("You must select at least one character set.")

    # Fill in the rest of the password randomly from the chosen character pool
    while len(password) < length:
        password.append(secrets.choice(char_pool))

    # Shuffle the password to ensure randomness and mix of characters
    secrets.SystemRandom().shuffle(password)
    return ''.join(password)


# GUI setup function to handle button clicks
def on_generate():
    try:
        # Get input values
        length = int(length_entry.get())
        password = generate_password(
            length,
            upper_var.get(),
            lower_var.get(),
            digits_var.get(),
            special_var.get()
        )
        # Output generated password
        output_var.set(password)
    except ValueError as e:
        # Show error message for invalid input
        messagebox.showerror("Error", str(e))


# Function to copy the password to clipboard
def copy_to_clipboard():
    root.clipboard_clear()  # Clear clipboard before copying
    root.clipboard_append(output_var.get())  # Copy the generated password to clipboard
    root.update()  # Update the clipboard content
    messagebox.showinfo("Copied", "Password copied to clipboard!")  # Show success message


# Main window setup
root = tk.Tk()
root.title("Secure Password Generator")
root.geometry("400x350")  # Set the window size
root.resizable(False, False)  # Prevent resizing of the window

# GUI Elements
tk.Label(root, text="Password Length:").pack(pady=5)
length_entry = tk.Entry(root)
length_entry.insert(0, "16")  # Set default password length to 16
length_entry.pack(pady=5)

# Variables for user selections (checkboxes)
upper_var = tk.BooleanVar(value=True)
lower_var = tk.BooleanVar(value=True)
digits_var = tk.BooleanVar(value=True)
special_var = tk.BooleanVar(value=True)

# Checkboxes for character sets
tk.Checkbutton(root, text="Include Uppercase Letters", variable=upper_var).pack(anchor="w")
tk.Checkbutton(root, text="Include Lowercase Letters", variable=lower_var).pack(anchor="w")
tk.Checkbutton(root, text="Include Digits", variable=digits_var).pack(anchor="w")
tk.Checkbutton(root, text="Include Special Characters", variable=special_var).pack(anchor="w")

# Button to generate password
tk.Button(root, text="Generate Password", command=on_generate).pack(pady=10)

# Output field for generated password
output_var = tk.StringVar()
output_entry = tk.Entry(root, textvariable=output_var, font=("Courier", 12), width=35)
output_entry.pack(pady=5)

# Button to copy password to clipboard
tk.Button(root, text="Copy to Clipboard", command=copy_to_clipboard).pack(pady=5)

# Run the main event loop for the GUI
root.mainloop()
