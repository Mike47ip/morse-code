def decode_message(morse_message)
  morse_words = morse_message.split('   ') # Split message into words (3 spaces)
  decoded_words = morse_words.map { |morse_word| decode_word(morse_word) }
  decoded_words.join(' ') # Join decoded words with a single space
end

# Method to decode a Morse code character
def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code_dict[morse_code]
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

# Example usage:
morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(morse_message)
puts decoded_message # Output should be "ABOVE FULL OF RUBIES"
