class Team

  attr_reader(:name, :players)
  attr_accessor(:coach)

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

  def set_coach_name(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_player(check_player)
    for player in @players do
      if player == check_player
        return true
      end
    end
    return false
  end
  
end