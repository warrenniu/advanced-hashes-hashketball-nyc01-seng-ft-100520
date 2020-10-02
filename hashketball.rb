# Write your code below game_hash
require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(player_name)
  game_hash.each do |location, team|
      # binding.pry
    team[:players].each do |player|
        if player[:player_name] == player_name
          return player[:points]
        end
  end
end
end

def shoe_size(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        return player[:shoe]
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end

def team_names
  empty_array = []
  variable = game_hash.each do |location, team|
    empty_array << team[:team_name]
    # binding.pry
  end
empty_array
  # binding.pry
end

def player_numbers(team_name)
  empty_array = []
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      team[:players].each do |player|
      # binding.pry
      empty_array << player[:number]
# binding.pry
      end
    end
  end
  empty_array
end

def player_stats(player_name)
  game_hash.each do |location, team|
    team[:players].each do |player|
      if player[:player_name] == player_name
        return player
      end
    end
  end
end

def big_shoe_rebounds
  big_shoe = nil
  big_rebounds = nil
  game_hash.each do |location, team|
    team[:players].each do |player|
      if big_shoe == nil || big_shoe < player[:shoe]
          big_shoe = player[:shoe]
          big_rebounds = player[:rebounds]
        end
      end
  end
  return big_rebounds
end

def most_points_scored
  most_points = nil
  highest_scorer = nil
  game_hash.each do |location, team|
    # binding.pry
    team[:players].each do |player|
      # binding.pry
      if most_points == nil || most_points < player[:points]
          most_points = player[:points]
          highest_scorer = player[:player_name]
        # binding.pry
      end
    end
  end
  return highest_scorer
end
 puts most_points_scored

def winning_team
  nets_points = 0
  hornets_points = 0
  team_won = nil
  game_hash.each do |location, team|
    if team[:team_name] == "Brooklyn Nets"
      # binding.pry
    team[:players].each do |player|
      nets_points = nets_points + player[:points]
      end
    end
    if team[:team_name] == "Charlotte Hornets"
      team[:players].each do |player|
        hornets_points = hornets_points + player[:points]
        # binding.pry
        end
      end
      if nets_points > hornets_points
        team_won = "Brooklyn Nets"
      elsif hornets_points > nets_points
        team_won = "Charlotte Hornets"
        binding.pry
      end
  end
  team_won
end
puts winning_team

def player_with_longest_name
  long_name = 0
  name_of_player = nil
  game_hash.each do |location, team|
    team[:players].each do |player|
      if long_name == 0 || long_name < player[:player_name].length
        long_name = player[:player_name].length
        name_of_player = player[:player_name]
        # binding.pry
      end
    end
  end
  name_of_player
end
puts player_with_longest_name

def long_name_steals_a_ton?
  long_name = 0
  name_of_player = nil
  steals_a_ton = 0
  game_hash.each do |location, team|
    team[:players].each do |player|
      if long_name == 0 || long_name < player[:player_name].length
        # binding.pry
        long_name = player[:player_name].length
        name_of_player = player
      end
      if steals_a_ton == 0 || steals_a_ton < player[:steals]
        steals_a_ton = player[:steals]
        # binding.pry
      end
      if name_of_player[:steals] == steals_a_ton
        # binding.pry
        return true
      end
    end
  end
end
puts long_name_steals_a_ton?
