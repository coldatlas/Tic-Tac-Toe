class Player
  attr_accessor :name, :choice
  def new_player(name = ' ', choice = ' ')
    @name = name
    @choice = choice
  end
end
