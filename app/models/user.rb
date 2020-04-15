class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 has_many :questions, dependent: :destroy

 def self.average_score
   scores = self.pluck(:points)
   scores.reduce(:+) / scores.size
 end
end
