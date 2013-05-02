


=begin

parts of the game

ships
players
board
play_game

2+ battleship


needs refactor and pull out player class. 
=end


class Player

attr_accessor :player

  def initialize
    @player = Player.new
    player_name
    player_picks_ships(@player)
    player_picks_squares(@player)
  end

  def player_name
    player_name_message
    name = get.chomp
    @player = name
  end


  def player_picks_ships(@player)
    player_picks_ship_message
  end

  def player_picks_squares(@player)
    player_picks_squares_message
  end

end



class GameMechanics

  attr_accessor :player

  def inititalize
    how_many_players
    @current_play_index = 0
    @board = Board.new
    player_picks_board_size
    how_many_squares
    player_picks_opponents_ships
    @player_ships = []    
  end

# player selection

  def how_many_players
    @players = Player.new
  end

  def player_picks_board_size
  end

  def how_many_squares(number_of_squares)
  end

  def player_picks_opponents_ships
  end

# Playing the game

  def play!
    puts "it is #{@player}'s turn"
    until game_over? do
      start_next_players_turn
    end
  end

  def start_next_players_turn
    current_play_index += 1
    if @current_turn_index >= @players.size
        @current_turn_index = 0
    end
  end

  def player_makes_selection
  end


  def sink_ship?
  end

  def won?
  end

  def game_over?
    @players.select { | player | player.won? }.any?
    end
  end

  def play_again?
  end

  # display

  def player_picks_squares_message
    puts "Which squares would you like to put your ships on?"
  end

  def player_picks_ship_message
    puts "Which ships would you like to select?"#add how to select ships info
  end

  def player_name_message
    puts "What is your name?"
  end


  def display_oppening_message
    puts "battleship rules:" #add actual battleship rules.
  end

  def display_you_sunk_my_battleship
    puts "You sunk my battleship. Damn Damn Damn"
  end

  def display_you_hit_my_Battleship
    puts "You hit my battleship. For Queen and country, you shall mot sink my ship!"
  end

  def display_you_missed_my_battleship
    puts "You missed my battleship. Hahahaha Go back to the old country you wanker."

  def display_winner_message(@player)
    puts "#{@player} you have won this round, but #{loser} shall win the war."
  end

  def display_play_again
    puts "Would you like to battle again?"
  end


end

   attr_accessor :position, :balance, :name
  
  def initialize(game, name)
    @position = 0
    @doubles_count = 0
    @balance = 1500
    @dice = game.dice
    @board = game.board
    @name = name
    @owned_properties = []
  end
  

 
