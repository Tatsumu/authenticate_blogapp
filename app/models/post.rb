class Post < ActiveRecord::Base
<<<<<<< HEAD
	has_many :users
	has_many :comments, through: :favorite_posts
	has_many :favorite_posts
=======
	belongs_to :user
	has_many :favorites, :dependent => :destroy
	has_many :favorite_users, through: => :favorites, :source => :user, :dependent => :destroy
	has_many :comments
>>>>>>> test
end
