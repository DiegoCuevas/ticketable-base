class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def member?
    self.role == "member"
  end

  def premium?
    self.role == "premium"
  end

  def admin?
    self.role == "admin"
  end
end
