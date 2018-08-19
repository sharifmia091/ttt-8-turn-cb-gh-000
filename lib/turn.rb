def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input.to_i
  input-=1
  return input
end

def valid_move?(board, index)
  def possition_taken?(board, index)
    if (board[index]== " ") || (board[index]== "") || (board[index] == nil)
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0,8) == true
      return true
    else
      return false
    end
  end

 if possition_taken?(board, index) == false && on_board?(input)==true
    return true
 else
    return false
 end
end


def move(board,index,character ="X")
  board[index] = character
  return board
end


def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9 to "
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)==true
    move(board,index)
    display_board(board)

  else
    turn(board)
  end
end
