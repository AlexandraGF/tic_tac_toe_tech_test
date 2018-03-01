class TicTacToe

  attr_reader :player1, :player2, :tic_array, :positions_array

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @tic_array = ["", "", "", "", "", "", "", "", ""]
    @positions_array = []
  end

  def turn(option, position)
    @tic_array[position] << option
    @positions_array << position
  end

end
