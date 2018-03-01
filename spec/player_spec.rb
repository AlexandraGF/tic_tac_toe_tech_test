require './lib/player.rb'

describe Player do

  describe 'Player creation: ' do
    it 'check that class can create player with name' do
      player = Player.new("Menah")
      expect(player.name).to eq("Menah")
    end
  end
end
