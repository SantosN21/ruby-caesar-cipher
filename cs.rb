def caesar_cipher(string, shift_factor)
  # Normalize the shift_factor to handle shifts larger than 26
  shift_factor = shift_factor % 26
  encrypted_string = ""

  # Iterate over each character in the string
  string.each_char do |char|
    if char.match?(/[A-Za-z]/)  # Check if the character is alphabetic
      if char.match?(/[A-Z]/)  # Uppercase letters
        # Shift the character within the range 'A' to 'Z'
        new_char = ((char.ord - 'A'.ord + shift_factor) % 26) + 'A'.ord
        encrypted_string += new_char.chr
      elsif char.match?(/[a-z]/)  # Lowercase letters
        # Shift the character within the range 'a' to 'z'
        new_char = ((char.ord - 'a'.ord + shift_factor) % 26) + 'a'.ord
        encrypted_string += new_char.chr
      end
    else
      # Non-alphabetic characters are added as is
      encrypted_string += char
    end
  end

  # Return the final encrypted string
  return encrypted_string
end