def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input-=1
  return input
end


def move(board,index,character ="X")
  board[index] = character
  return board
end

def possition_taken?(board, index)
  if ((board[index]== " ") || (board[index]== "") || (board[index]== nil))

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9 to "
  input = gets.strip
  index = input_to_index(input)
  move(board,index)
  display_board(board)
end
