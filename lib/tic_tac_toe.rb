WIN_COMBINATIONS = [[0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

<<<<<<< HEAD
def move(board, index, player)
  board[index] = player
=======
def move(board, index, turn)
  board[index] = turn
>>>>>>> 95e5e4506411bfa6c63bb7a71819dd635d0ae97e
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
<<<<<<< HEAD
    player = current_player(board)
    move(board, index, player)
=======
    move(board, index, turn)
>>>>>>> 95e5e4506411bfa6c63bb7a71819dd635d0ae97e
    display_board(board)
  else
    turn(board)
  end
<<<<<<< HEAD
end

def turn_count(board)
  count = 0
  board.each do|position|
    if position != " " && position != nil
      count += 1
    end
  end
  return count
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    end
  end
  return false
end

def full?(board)
  if board.any?{|i| i == " " || i == nil}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end
  
def winner(board)
  if won?(board)
    win = won?(board)
    if win.all?{|player| board[player] == "X"}
      return "X"
    else
      return "O"
    end
  else
    return nil
  end
end

def play(board)
  until over?(board)
    turn(board)
  end
  if draw?(board)
    puts "Cat's Game!"
  else
    puts "Congratulations #{winner(board)}!"
  end
=======
>>>>>>> 95e5e4506411bfa6c63bb7a71819dd635d0ae97e
end