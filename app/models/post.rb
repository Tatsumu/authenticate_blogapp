class Post < ActiveRecord::Base
	has_many :users
	has_many :comments, through: :favorite_posts
	has_many :favorite_posts
end
