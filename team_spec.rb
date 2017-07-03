require('minitest/autorun')
require_relative('./team')

class TestTeam < MiniTest::Test

  def test_get_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.get_name

    assert_equal("Devils", result)
  end

  def test_get_players_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.get_players_names

    assert_equal(["Ned", "Whacky", "Covert"], result)
  end

  def test_get_coach_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.get_coach_name

    assert_equal("Coach Wiggum", result)
  end

  def test_set_coach_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.set_coach_name("Coach Maximal")

    assert_equal("Coach Maximal", team1.get_coach_name)
  end

  def test_set_coach_name
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.set_coach_name("Coach Maximal")

    assert_equal("Coach Maximal", team1.get_coach_name)
  end

  def test_add_player
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.add_player("Maximullion")

    assert_equal(["Ned", "Whacky", "Covert", "Maximullion"], team2.get_players_names)
  end

  def test_check_player__false
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.check_player("Max")

    assert_equal(false, result)
  end

  def test_check_player__true
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.check_player("Steve")

    assert_equal(true, result)
  end

  def test_points__win
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team1.points("win")

    assert_equal(3, result)
  end

  def test_points__loss
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.points("loss")

    assert_equal(0, result)
  end

  def test_points__draw
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.points("draw")

    assert_equal(1, result)
  end

  def test_points__points_on_board
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 3)

    result = team2.points("win")

    assert_equal(6, result)
  end

  def test_points__invalid
    team1 = Team.new("Devils", ["Pat", "Steve", "Sam"], "Coach Carter", 0)
    team2 = Team.new("Spankers", ["Ned", "Whacky", "Covert"], "Coach Wiggum", 0)

    result = team2.points("smashed it")

    assert_equal("not a valid entry", result)
  end


end