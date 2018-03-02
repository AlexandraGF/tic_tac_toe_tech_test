  private

  def game_over
    if @available_fields == 0
      return "Game over! No one won! Not available spaces to play"
    end
  end

  def taken_fields
    raise 'Cannot choose a taken field! Please choose another empty field!'
  end

  def full_line
    case
    when
    @tic_array[0] == 'x' && @tic_array[3] == 'x' && @tic_array[6] == 'x',
    @tic_array[1] == 'x' && @tic_array[4] == 'x' && @tic_array[7] == 'x',
    @tic_array[2] == 'x' && @tic_array[5] == 'x' && @tic_array[8] == 'x',
    @tic_array[2] == 'x' && @tic_array[4] == 'x' && @tic_array[6] == 'x',
    @tic_array[0] == 'x' && @tic_array[4] == 'x' && @tic_array[8] == 'x',
    @tic_array[0] == 'x' && @tic_array[1] == 'x' && @tic_array[2] == 'x',
    @tic_array[3] == 'x' && @tic_array[4] == 'x' && @tic_array[5] == 'x',
    @tic_array[6] == 'x' && @tic_array[7] == 'x' && @tic_array[8] == 'x'
    return "Game over! #{@player1.name} has won!"

    when
    @tic_array[0] == 'o' && @tic_array[3] == 'o' && @tic_array[6] == 'o',
    @tic_array[1] == 'o' && @tic_array[4] == 'o' && @tic_array[7] == 'o',
    @tic_array[2] == 'o' && @tic_array[5] == 'o' && @tic_array[8] == 'o',
    @tic_array[2] == 'o' && @tic_array[4] == 'o' && @tic_array[6] == 'o',
    @tic_array[0] == 'o' && @tic_array[4] == 'o' && @tic_array[8] == 'o',
    @tic_array[0] == 'o' && @tic_array[1] == 'o' && @tic_array[2] == 'o',
    @tic_array[3] == 'o' && @tic_array[4] == 'o' && @tic_array[5] == 'o',
    @tic_array[6] == 'o' && @tic_array[7] == 'o' && @tic_array[8] == 'o'
    return "Game over! #{@player2.name} has won!"

    end
  end
