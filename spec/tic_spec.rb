require './lib/tic.rb'

describe Game do

  describe 'Game playing: ' do
    it 'check that class respond to turn method' do
      Game.new(player1,player2)
      expect(game).to respond_to(:turn).with(2).arguments
    end
  end
end
