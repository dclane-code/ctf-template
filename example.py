#!/usr/bin/env python3

def read_flag_from_file():
    try:
        with open("flag.txt", "r") as file:
            flag = file.read()
        return flag
    except FileNotFoundError:
        return "Flag file not found."

def main():
    secret_number = 42  # The specific number that the user needs to enter
    print("Enter a number: ")
    user_input = input()

    try:
        user_number = int(user_input)
        if user_number == secret_number:
            flag = read_flag_from_file()
            print("Congratulations: " + flag)
        else:
            print("Wrong number. Try again.")
    except ValueError:
        print("Invalid input. Please enter a valid number.")

if __name__ == "__main__":
    main()
