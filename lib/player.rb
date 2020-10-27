class Player
    attr_accessor :name, :xo
    def new_player(name = ' ', xo = ' ')
      @name = name
      @choice = xo
    end
end