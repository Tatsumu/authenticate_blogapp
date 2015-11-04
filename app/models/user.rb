class User < ActiveRecord::Base

	has_many :posts
	has_many :favorites, :dependent => :destroy
	has_many :favorite_posts, through: :favorites, :source => :post, :dependent => :destroy#ユーザーが削除したらコメントも消えるように
	has_many :comments
end
