require './lib/private_methods.rb'

class TicTacToe

  attr_reader :player1, :player2, :tic_array, :positions_array, :available_fields

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @tic_array = ["", "", "", "", "", "", "", "", ""]
    @available_fields = 9
  end

  def turn(option, position)
    if @tic_array[position] == 'x' || @tic_array[position] == 'o'
      return taken_fields
    elsif @tic_array[position] != 'x' || @tic_array[position] != 'o'
      @tic_array[position] << option
      @available_fields -= 1

      if @available_fields != 0
        return full_line
      elsif @available_fields == 0
        return game_over
      end

    end
  end
end
