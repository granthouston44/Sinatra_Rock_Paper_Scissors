require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/Game')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class GameTest < MiniTest::Test

def test_logic_draw
  assert_equal("draw!", Game.play('scissors','scissors'))
end

def test_logic_wins
  assert_equal("Player1 wins!", Game.play('scissors', 'paper'))
end

def test_logic_loses
  assert_equal("Player2 wins!", Game.play('rock', 'paper'))
end

end
