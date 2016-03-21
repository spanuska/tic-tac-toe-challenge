class Game
  attr_accessor :human_char, :human_order
  def new
    prompt_for_character
    assign_player_order
    @grid = grid
  end

  def prompt_for_character
    puts "Hello, human player! Please choose
     a character 'X' or 'O' and type it here:"
    @human_char = user_input
  end

  def user_input
    gets.chomp.upcase
  end

  def grid
    [%w(1,2,3), %w(4,5,6), %w(7,8,9)]
  end

  def assign_player_order
    order = [1, 2]
    @human_order = order.sample
    # @computer_player = (@human_player == 1 ? 2 : 1)
  end
end
