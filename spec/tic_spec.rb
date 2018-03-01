require './lib/tic.rb'

describe TicTacToe do

  describe 'Game playing: ' do
    it 'check that class respond to turn method' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      expect(game).to respond_to(:turn).with(2).arguments
    end

    it 'turn method adds the player option in the tic_array' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      expect(game.tic_array[0]).to eq('x')
    end

    it 'turn method adds the player position in the positions_array' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      expect(game.positions_array.length).to eq(1)
    end

    it 'turn method lowers number of available fields in a game' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      expect(game.available_fields).to eq(8)
    end

    it 'full_line method checks if 3 spaces in a row/column/diagonal have the same option x' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      game.turn('o', 1)
      game.turn('x', 3)
      game.turn('o', 4)
      game.turn('x', 6)
      expect(game.won).to eq("Game over! Dan has won!")
    end

    it 'full_line method checks if 3 spaces in a row/column/diagonal have the same option o' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      game.turn('o', 1)
      game.turn('x', 3)
      game.turn('o', 4)
      game.turn('x', 5)
      game.turn('o', 7)
      expect(game.won).to eq("Game over! Helen has won!")
    end

    it 'available_space method checks if there is any available fields to play' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 5)
      game.turn('o', 4)
      game.turn('x', 7)
      game.turn('o', 3)
      game.turn('x', 1)
      game.turn('o', 2)
      game.turn('x', 6)
      game.turn('o', 8)
      expect(game.turn('x', 0)).to eq("Game over! No one won! Not available spaces to play")
    end


    it 'player can not take a taken field' do
      player1 = Player.new('Dan')
      player2 = Player.new('Helen')
      game = TicTacToe.new(player1,player2)
      game.turn('x', 0)
      game.turn('o', 1)
      game.turn('x', 3)
      expect { game.turn('o', 0) }.to raise_error 'Cannot choose a taken field! Please choose another empty field!'
    end
  end
end
