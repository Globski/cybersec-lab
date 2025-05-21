# Secure Password Generator with GUI

## Description

This project creates a **secure password generator** with a **graphical user interface (GUI)** built using `tkinter`. The generator allows users to customize their password based on length and character sets. The generator meets **2025 password security standards** , allowing users to generate complex, random passwords (at least 12 characters) that include uppercase and lowercase letters, digits, and special symbols. It uses Python’s `secrets` module to ensure cryptographic randomness, making the passwords resistant to brute-force and dictionary attacks. The project includes a simple graphical user interface (GUI) created using the tkinter library, which allows users to easily generate passwords without needing to interact with the command line.

## Project Structure

| Task               | Description                                                                                          | Source Code                                     |
| ------------------ | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| Password Generator | A Python-based password generator with GUI that allows the user to select character sets and password length. | [password\_generator.py](password_generator.py) |

---

## Learning Objectives

By the end of this project, you should be able to:

* Understand how to use Python's `secrets` module for generating secure passwords.
* Implement a GUI in Python using `tkinter`.
* Customize the user experience with options for password length and character sets.

## Requirements

* **Operating System**: Cross-platform (Windows, macOS, Linux)
* **Python Version**: Python 3.6 or higher
* **Libraries**: `tkinter`, `secrets`, `string`
  * `tkinter` (GUI; comes bundled with most Python installations)
  * `secrets` (for cryptographically secure random numbers)
  * `string` (for predefined character sets)

> 📝 Note: On Linux, you may need to install `tkinter` manually:
>
> ```sh
> sudo apt-get install python3-tk
> ```

### How to Use

1. **Clone the Repository:**

   ```sh
   git clone https://github.com/<your-username>/password-generator.git
   cd password-generator
   ```

2. **Run the Script:**
   To start the password generator, simply run:

   ```sh
   python password_generator.py
   ```

3. **Choose Your Options:**

   * **Password Length**: Enter the desired password length (minimum 12 characters).
   * **Character Sets**: Choose which sets of characters to include in the password (uppercase, lowercase, digits, special characters).
   * **Generate Password**: Press the "Generate Password" button to create a secure password.
   * **Copy to Clipboard**: Press the "Copy to Clipboard" button to copy the generated password.

4. **Example Output**:

   ```plaintext
   Password: $fP3rA%Wq0E9z
   ```
---

## Features:

* **Password Length**: Choose any length, but a minimum of 12 characters is recommended.
* **Character Sets**: Select one or more character sets (uppercase, lowercase, digits, special characters).
* **Clipboard Copying**: Copy the generated password to your clipboard with one click.
* **Security**: Uses `secrets.choice` for cryptographically secure random selections via the secrets module.
* **GUI Based**: No command-line required.

### Code Overview

* **Imports**:

  * `tkinter`: For creating the graphical user interface (GUI).
  * `messagebox`: For showing error or success messages in the GUI.
  * `secrets`: For generating cryptographically secure random numbers.
  * `string`: For accessing predefined sets of characters (uppercase, lowercase, digits).

* **`generate_password` function**:

  * The function accepts parameters to define password length and the inclusion of various character sets.
  * **Password Length Validation**: Ensures the length is at least 12 characters. If it's not, a `ValueError` is raised.
  * **Character Pool Construction**: The function builds the character pool by adding the selected character sets (uppercase, lowercase, digits, special characters).
  * **Ensuring At Least One Character From Each Set**: Ensures that the password contains at least one character from each selected set.
  * **Password Construction**: Randomly selects characters from the pool to meet the desired length and then shuffles the password to ensure randomness.

* **`on_generate` function**:

  * This function is triggered when the "Generate Password" button is pressed. It retrieves the length and selection of character sets, then calls the `generate_password` function to create the password. If an error occurs, it shows a messagebox with the error message.

* **`copy_to_clipboard` function**:

  * Clears the clipboard and copies the generated password to it. A success message is shown after copying.

* **GUI Elements**:

  * The GUI uses **labels**, **checkbuttons**, and **buttons** to create an interactive interface where the user can:

    * Specify the length of the password.
    * Select which character sets to include in the password.
    * Generate the password and view it.
    * Copy the generated password to the clipboard.

---

## Additional Notes

* **Password Security**: The password generator ensures randomness and avoids predictable patterns.
* **Cross-platform**: The script works on Windows, macOS, and Linux.
* **Tkinter**: Tkinter is the standard Python library for creating graphical user interfaces. It is pre-installed with Python in most cases. If it is missing, you can install it with sudo apt-get install python3-tk (Ubuntu/Debian) or brew install python-tk (MacOS).
* **Security**: The password generator uses secure, random choices, making it difficult for attackers to predict passwords using brute force or dictionary attacks.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
