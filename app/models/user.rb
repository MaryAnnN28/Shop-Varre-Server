class User < ApplicationRecord
  has_secure_password
  has_one :cart

  validates :email, :password, :first_name, :last_name, presence: true
  validates :email, uniqueness:
    {message: ': An account associated with %{value} already exists'}
  validates :password, length: { in: 8..15 }
end
