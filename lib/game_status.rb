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
    if board[win_combination].all == "X"
      return win_combination
    else
      false
    end
  end
end



def full?(board)

end

def draw?(board)

end

def over?(board)

end

def winner(board)

end
