class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  has_many :statuses
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	validates :first_name, :last_name, presence: true

 	validates :profile_name, presence: true, uniqueness: true, format: { with: /a-zA-Z0-9_-/, message: 'Must be formatted correclty.' }

  def full_name
  	first_name + " " + last_name
  end
end
