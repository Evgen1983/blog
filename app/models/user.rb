class User < ActiveRecord::Base
	
	has_many :posts
	has_many :comments, through: :posts
	validates :name,  presence: true, length: { maximum: 50 } 
  validate :user_count, on: :create

  has_secure_password 
  validates :password, presence: true, length: { minimum: 6 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def user_count
    if User.count > 1
      errors.add(:user_count, "- количество пользователей ограничено!")
    end
  end
end
