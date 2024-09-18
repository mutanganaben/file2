# String manipulation functions

def string_concatenation(str1, str2):
    return str1 + " " + str2

def string_interpolation(name, age):
    return f"My name is {name} and I am {age} years old."

def substring_extraction(input_string, start, end):
    return input_string[start:end]

def case_conversion(input_string):
    upper_case = input_string.upper()
    lower_case = input_string.lower()
    return upper_case, lower_case

def reverse_string(input_string):
    return input_string[::-1]

def string_length(input_string):
    return len(input_string)

# Example usage
if __name__ == "__main__":
    str1 = "Hello"
    str2 = "World"
    
    # String concatenation
    concatenated_string = string_concatenation(str1, str2)
    print("Concatenated String:", concatenated_string)
    
    # String interpolation
    interpolated_string = string_interpolation("Alice", 25)
    print("Interpolated String:", interpolated_string)
    
    # Substring extraction (Example: Extracting from index 0 to 5)
    substring = substring_extraction("Programming", 0, 5)
    print("Extracted Substring:", substring)
    
    # Case conversion
    upper_case, lower_case = case_conversion("Python")
    print("Uppercase:", upper_case)
    print("Lowercase:", lower_case)
    
    # Reverse the string
    reversed_string = reverse_string("Python")
    print("Reversed String:", reversed_string)
    
    # String length
    length = string_length("Hello World")
    print("Length of the string:", length)
