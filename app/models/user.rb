class User < ApplicationRecord
  validates :username, :email, presence: true, uniqueness: true
  validates :username, length: {in: 4..16}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :post, dependent: :destroy
  has_many :comment
end
