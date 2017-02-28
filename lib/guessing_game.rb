def guess
randNum = rand(100)
p randNum
p "Guess a number between 1 and 100"
input = gets.chomp.to_i
counter = 0
answer = false
while answer == false
  if input < randNum
    counter += 1
    p 'the number is higher'
    p 'Guess again'
    input = gets.chomp.to_i
  elsif input > randNum
    counter += 1
    p 'the number is lower'
    input = gets.chomp.to_i
  else
    p "You got it in #{counter} tries"
    answer = true
  end
end
end

guess
