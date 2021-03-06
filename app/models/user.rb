class User < ActiveRecord::Base
  validates :email, :presence => true
  validates :encrypted_password, :presence => true
  has_many :tweets

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
