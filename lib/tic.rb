class TicTacToe

  attr_reader :player1, :player2, :tic_array, :positions_array, :available_fields

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @tic_array = ["", "", "", "", "", "", "", "", ""]
    @positions_array = []
    @available_fields = 9
  end

  def turn(option, position)
    @tic_array[position] << option
    @positions_array << position
    @available_fields -= 1
  end

end
