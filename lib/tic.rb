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

  def won
    if @tic_array == ["x", "0", "", "x", "0", "", "x", "", ""]
      "Game over! #{@player1.name} has won!"
    end
  end

end
