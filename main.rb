
def caesar_cipher(str, shift) 
  centance = str.split("")
  alphabet = 26
  

  centance = centance.map { |char| char.ord }

  centance = centance.map do |num| 
    if num != 32

      if num.between?(97, 122)

        base = 'a'.ord
        
        num -= shift
        
        if num < base
            num += alphabet
        end
        
      
      elsif num.between?(65, 90)
        base = 'A'.ord
        num -= shift
        if num < base
            num += alphabet
        end
      end
      
    
    num
    else
      num
    end
  end

  centance = centance.map { |num| num.chr }

  centance = centance.join("")
  print centance
  centance

end
puts "enter your word/centance:"
word_user = gets
puts "enter your shift:"
shift_user = gets.to_i

caesar_cipher(word_user, shift_user)