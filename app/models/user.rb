class User < ActiveRecord::Base
	has_many :posts, through: :favorite_posts
	has_many :comments
	has_many :favorite_posts
end
