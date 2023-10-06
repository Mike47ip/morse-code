require_relative '../morse_code_decoder' # Adjust the path as needed

describe 'Morse code decoder' do
  it 'decodes a Morse code character correctly' do
    expect(decode_char('.-')).to eq('A')
    expect(decode_char('-...')).to eq('B')
    # Add more test cases for other Morse code characters
  end
end
