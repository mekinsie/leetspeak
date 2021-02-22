string = "sassafrass"
def leetspeak(string)
  leetspeak_array = []
  letters = string.split("")
  
  x = 0
  letters.each do |letter|
    if(letter == " ")
      leetspeak_array.push(letter)
      x = 0
    elsif(x == 0 && letter == "s")
      leetspeak_array.push(letter)
      x +=1
    elsif(letter == "s")
      leetspeak_array.push('z')
      x +=1
    elsif(letter == "e")
      leetspeak_array.push('3')
      x +=1
    elsif(letter == "o")
      leetspeak_array.push('0')
      x +=1
    elsif(letter == "I")
      leetspeak_array.push('1')
      x +=1
    else
      leetspeak_array.push(letter)
      x +=1
    end
  end
  leetspeak_array.join()
end