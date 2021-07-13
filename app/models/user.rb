class User < ApplicationRecord
  has_many :dishes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
