require 'game'

RSpec.describe Game do
  before(:each) do
    @game = Game.new
  end
  let(:game) { @game }

  describe '#new' do
    it 'creates a game' do
      expect { @game } .to_not raise_error
    end

    it 'creates a grid for the game instance' do
      expect(@game.grid).to eq([%w(1,2,3), %w(4,5,6), %w(7,8,9)])
    end
  end

  describe '#prompt_for_character' do
    it 'prints instructions to pick a character to the console' do
      allow(@game).to receive(:puts).with("Hello, human player! Please choose
      #  a character 'X' or 'O' and type it here:")
    end
    it 'assigns @human_char based on user input' do
      allow(@game).to receive(:user_input).and_return('X', 'O')
      expect(@game.prompt_for_character)
      expect(@game.instance_variable_get(:@human_char)).to eq('X')
      expect(@game.prompt_for_character)
      expect(@game.instance_variable_get(:@human_char)).to eq('O')
    end
  end

  describe '#assign_player_order' do
    it 'randomly assigns player order' do
      result = @game.assign_player_order
      expect(@game.instance_variable_get(:@human_order)).to eq(result)
    end
  end
end
