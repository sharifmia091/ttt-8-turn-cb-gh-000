def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9 to "
  input = gets.strip

  def input_to_index(input)
    input = input.to_i
    input-=1
    return input
  end

  index = input_to_index(input)

  def move(board,index,character ="X")
    board[index] = character
    return board
  end

  display_board(board)


end
