# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Metrics/LineLength
class Board
  attr_accessor :board
  attr_reader :moves

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @moves = 0
  end

  def show_board
    puts '╔═══╦═══╦═══╗'
    puts "║ #{@board[0]} ║ #{@board[1]} ║ #{@board[2]} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@board[3]} ║ #{@board[4]} ║ #{@board[5]} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@board[6]} ║ #{@board[7]} ║ #{@board[8]} ║"
    puts '╚═══╩═══╩═══╝'
  end

  def check_win(combo)
    win_conditions = [
      [@board[0], @board[1], @board[2]],
      [@board[3], @board[4], @board[5]],
      [@board[6], @board[7], @board[8]],
      [@board[0], @board[3], @board[6]],
      [@board[1], @board[4], @board[7]],
      [@board[2], @board[5], @board[8]],
      [@board[0], @board[4], @board[8]],
      [@board[2], @board[4], @board[6]]
    ]

    win_conditions.each do |i|
      check = i.all? do |number|
        number == combo
      end
      next unless check

      return true
    end
    false
  end

  def player_move(square)
    chosen_square = @board[0] if square == 1
    chosen_square = @board[1] if square == 2
    chosen_square = @board[2] if square == 3
    chosen_square = @board[3] if square == 4
    chosen_square = @board[4] if square == 5
    chosen_square = @board[5] if square == 6
    chosen_square = @board[6] if square == 7
    chosen_square = @board[7] if square == 8
    chosen_square = @board[8] if square == 9
    chosen_square
  end

  def pl_update(square, choice)
    @board[0] = choice if square == 1
    @board[1] = choice if square == 2
    @board[2] = choice if square == 3
    @board[3] = choice if square == 4
    @board[4] = choice if square == 5
    @board[5] = choice if square == 6
    @board[6] = choice if square == 7
    @board[7] = choice if square == 8
    @board[8] = choice if square == 9
    @moves += 1
    show_board
  end
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Metrics/LineLength
