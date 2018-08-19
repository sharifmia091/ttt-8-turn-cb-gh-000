def display_board(board)
  puts"   |   |   "
  puts"-----------"
  puts"   |   |   "
  puts"-----------"
  puts"   |   |   "
end


def input_to_index(input)
  input = input.to_i
  input-=1
  return input
end

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9 to "
  input = gets.strip
  index = input_to_index(input)
  return index

end


def move(board,index,character ="X")
  board[index] = character
  
end