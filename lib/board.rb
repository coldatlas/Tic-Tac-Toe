class Board
  attr_reader :moves
  attr_accessor :board

  def new
    @moves = 0
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
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

  def player_move_update(square ,chosen_square)
    @board[0] = chosen_square if square == 1
    @board[1] = chosen_square if square == 2
    @board[2] = chosen_square if square == 3
    @board[3] = chosen_square if square == 4
    @board[4] = chosen_square if square == 5
    @board[5] = chosen_square if square == 6
    @board[6] = chosen_square if square == 7
    @board[7] = chosen_square if square == 8
    @board[8] = chosen_square if square == 9
    show_board
    moves += 1
  end





end