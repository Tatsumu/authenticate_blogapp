class User < ActiveRecord::Base
<<<<<<< HEAD
	has_many :posts, through: :favorite_posts
=======
	has_many :posts
	has_many :favorites, :dependent => :destroy
	has_many :favorite_posts, through: :favorites, :source => :post, :dependent => :destroy#ユーザーが削除したらコメントも消えるように
>>>>>>> test
	has_many :comments
end
