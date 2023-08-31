def decode_char(morse_string)
  morse_code = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code[morse_string] || ''
end

def decode_word(morse_word)
  characters = morse_word.split
  characters.map { |char| decode_char(char) }.join
end

def decode_message(morse_message)
  words = morse_message.split('   ')
  words.map { |word| decode_word(word) }.join(' ')
end

# Ancient Bottle Message
bottle_message = '.- -... --- -..- ..-. ..- .-.. .-.. --- ..-. .-. ..- -... .. . ...'

# Decode the bottle's message
decoded_bottle_message = decode_message(bottle_message)
puts decoded_bottle_message
