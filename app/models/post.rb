class Post < ActiveRecord::Base
	belongs_to :user
	has_many :favorites, :dependent => :destroy
	has_many :favorite_users, :through => :favorites, :source => :user, :dependent => :destroy
	has_many :comments
end
