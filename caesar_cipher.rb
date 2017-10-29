def shift(char_value, shift_factor, char_min, char_max)
	shifted_char = char_value + shift_factor
	if (shifted_char > char_max)
		shifted_char = shifted_char - char_max + char_min - 1
	end
	shifted_char.chr
end

def caesar_cipher(message, shift_factor)

	new_message = ""

  message.scan(/./) do |character|
  	char_ascii = character.ord
  	if (char_ascii >= 48 && char_ascii <= 57)
  		new_message += shift(char_ascii, shift_factor, 48, 57)
  	elsif (char_ascii >= 65 && char_ascii <= 90)
  		new_message += shift(char_ascii, shift_factor, 65, 90)
  	elsif (char_ascii >= 97 && char_ascii <= 122)
  		new_message += shift(char_ascii, shift_factor, 97, 122)
  	else
  		new_message += char_ascii.chr
  	end
  end

  new_message
end


puts "Enter the string to be encrypted: "
message = gets.chomp
puts "Enter your shift factor: "
shift_factor = gets.chomp.to_i

puts caesar_cipher(message, shift_factor)
