class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :players
  belongs_to :games
end
