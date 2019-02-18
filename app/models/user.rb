class User < ApplicationRecord
  has_many :comments
  has_many :created_posts , class_name: 'Post'
  has_and_belongs_to_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_comment_ratings
  has_many :comments, through: :user_comment_ratings
  has_one :ratings, through: :user_comment_ratings
end
