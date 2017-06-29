class User < ApplicationRecord
  has_secure_password
  has_many :aliass

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, presence: true
  validates :handle, presence: true, length: { minimum: 7 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, on: :create
  before_save :email_lowercase

  def email_lowercase
      email.downcase!
  end
end
