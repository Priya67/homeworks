class User < ApplicationRecord
  validates :username, :session_token, :password_digest, presence: true
  validates :password, length: {minimum: 6, allow_nil: true}

  after_initialize :ensure_session_token

  attr_accessor :password

  has_many :links,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Link

  has_many :comments,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :Comment


  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
