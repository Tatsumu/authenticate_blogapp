class User < ActiveRecord::Base
	has_many :posts
	has_many :favorites, :dependent => :destroy
	has_many :favorite_posts, :through => :favorites, :source => :post, :dependent => :destroy#ユーザーが削除したらコメントも消えるように
	has_many :comments
	has_secure_password
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
end
