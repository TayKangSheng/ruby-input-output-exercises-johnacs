def reverseString
  # str.reverse!
  p 'Enter a string'
  str = gets.chomp
  for i in 0..str.length - 1
    break if i >= (str.length / 2).floor
    temp = str[i]
    str[i] = str[str.length - 1 - i]
    str[str.length - 1 - i] = temp

    end

  p str
end


reverseString
