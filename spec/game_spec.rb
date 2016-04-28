require 'game'

describe Game do
let(:game) { described_class.new }
let(:player) { double :player }

  it 'allows one player to attack another' do
      expect(player).to receive(:receive_damage)
      game.attack(player)
    end


end