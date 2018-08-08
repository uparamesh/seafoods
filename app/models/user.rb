class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def add(a,b)
  	a+b
  end

  def sub(a,b)
  	a-b
  end

  def is_admin?
    role_id == 2
  end
end
