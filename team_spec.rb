require('minitest/autorun')
require_relative('./team')

class TestTeam < MiniTest::Test

  def test_get_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter")
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum")

    result = team1.get_name

    assert_equal("Devils", result)
  end

  def test_get_players_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter")
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum")

    result = team2.get_players_names

    assert_equal(["Ned", "Whacky", "Covert"], result)
  end

  def test_get_coach_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter")
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum")

    result = team2.get_coach_name

    assert_equal("Coach Wiggum", result)
  end



end