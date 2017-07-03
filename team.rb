class Team

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def get_name
    return @name
  end

  def get_players_names
    return @players
  end

  def get_coach_name
    return @coach
  end
end