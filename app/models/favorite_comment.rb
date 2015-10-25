class FavoriteComment < ActiveRecord::Base
  belongs_to :comment
end
