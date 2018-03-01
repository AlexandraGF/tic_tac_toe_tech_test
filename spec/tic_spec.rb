require './lib/tic.rb'

describe TicTacToe do

  describe 'Game playing: ' do
    it 'check that class respond to turn method' do
      player1 = Player.new("Dan")
      player2 = Player.new("Helen")
      game = TicTacToe.new(player1,player2)
      expect(game).to respond_to(:turn).with(2).arguments
    end
  end
end
