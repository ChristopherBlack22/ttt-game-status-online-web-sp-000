# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
<<<<<<< HEAD
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2] 
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
      if position_taken?(board, win_index_1) && position_1 == position_2 && position_2 == position_3
       return win_combination 
      end
    end
      return false 
end

def full?(board)
  board.all? {|index| index != (nil || " " || "")}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true 
  else
    return false 
  end
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    winner = won?(board)[0]
    return 
  end
end
=======
    if win_combination[0] == "X" && win_combination[1] == "X" && win_combination[2] == "X"
      return win_combination  
    else
      return false 
    end
  end 
end
>>>>>>> 4df8d8504a1c5848447adeca885b3f563823858e
