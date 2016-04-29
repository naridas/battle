
class Game
	attr_reader :player_1, :player_2, :active_player, :opponent

	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@player_arr = [player_1, player_2]
		@active_player = player_1
		@opponent = player_2
	end

  def attack
  	@opponent.receive_damage
		change_active_player
  end

	def change_active_player
		@active_player = opponent_of(@active_player)
		@opponent = attacker(@active_player)
	end

	def opponent_of(the_player)
		@player_arr.select { |p| p != the_player }.first
	end

	def attacker(the_player)
		@player_arr.select { |p| p != the_player }.last
	end

	def game_over?
		@active_player.hp  <= 0
	end

	# def self.create
	# 	@game = Game.new(player_1, player_2)
	# end

	# def self.instance
	# 	@game
	# end

end
