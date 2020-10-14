class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn until @game_over == true 
     if @game_over == false 
      self.round_success_message
      @sequence_length += 1
    else
      self.game_over_message
      self.reset_game
    end 

  end

  def take_turn
    self.show_sequence
    self.require_sequence  
    if @game_over == false 
      self.round_success_message
      @sequence_length += 1
    else
      self.game_over_message
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    puts "Enter the sequence"
    input = gets.chomp.split(" ")
    @game_over = true if input != @seq 
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Succeeded this round!"
  end

  def game_over_message
    puts "Game Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end
end
