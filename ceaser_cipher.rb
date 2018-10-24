def encrypting(key,message)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
	response = ""
	i = 0
	while i<message.length
	    unless message[i]==" " then
			cypher_letter_index = alphabet.index(message[i])+key
			if cypher_letter_index>=26 then
			cypher_letter_index-=26
			end 
			response+=alphabet[cypher_letter_index] 
	    else
	    	response+=" "
	    end 
	    i+=1
	end 
	return response
end 

def deciphering(key,message)
	alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
  	response=""
  	i=0
	while i<message.length
	    unless message[i]==" " then
			cypher_letter_index = alphabet.index(message[i])-key
			if cypher_letter_index<=0 then
			cypher_letter_index+=26
			end 
			response+=alphabet[cypher_letter_index] 
	    else
	    	response+=" "
	    end 
	    i+=1
	end 
	return response
end 

puts "To encrypt: 1"
puts "To decrypt: 2"
option = gets.chomp

case option
	when '1'
		puts "Type the message that you want to encrypt"
		message = gets.chomp
		puts "Type the encrypt key:"
		key = gets.chomp.to_i
		encrypting(key,message)
	when '2'
		puts "Type the message that you want to decrypt"
		message = gets.chomp
		puts "Type the decrypt key:"
		key = gets.chomp.to_i
		deciphering(key,message)
	else
		puts "Opção inválida"
end
