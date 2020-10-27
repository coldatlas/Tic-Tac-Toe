class Board

  def new
    @s1 = [" "]
    @s2 = [" "]
    @s3 = [" "]
    @s4 = [" "]
    @s5 = [" "]
    @s6 = [" "]
    @s7 = [" "]
    @s8 = [" "]
    @s9 = [" "]
  end

  def display

    puts '╔═══╦═══╦═══╗'
    puts "║ #{@s1} ║ #{@s2} ║ #{@s3} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@s4} ║ #{@s5} ║ #{@s6} ║"
    puts '╠═══╬═══╬═══╣'
    puts "║ #{@s7} ║ #{@s8} ║ #{@s9} ║"
    puts '╚═══╩═══╩═══╝'

  end
















end