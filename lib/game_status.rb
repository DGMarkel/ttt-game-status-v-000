# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  matches = []
  WIN_COMBINATIONS.each do |win_index|
    all_possible_wins.each do |win_combination|
      if board[wins] == "X" || board[wins] == "O"
        matches << board[wins]
        if matches == ["X", "X", "X"] || matches == ["O", "O", "O"]
          all_possible_wins[wins]
        else
          matches = []
        end
      end
    end
  end
end
