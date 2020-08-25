# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # Top left - bottom right diagonal
  [2,4,6] # Top right - bottom left diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_taken?(board,win_index_1) && position_1 == position_2 == position_3
      return win_combination
    else
      false
  end
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "0"
  end
end

def draw?(board)

end

def over?(board)

end

def winner(board)

end
