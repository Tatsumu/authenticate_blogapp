class FavoritePost < ActiveRecord::Base
  belongs_to :post
  belongs_to :user, :foreign_key => :user_id
end
