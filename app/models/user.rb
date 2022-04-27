class User < ActiveRecord::Base

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true
  validates :password_confirmation, presence: true

  validate :password_length

  def password_length
    if password.length < 5
      errors.add(:password, "password is not long enough")
    end
  end

  def self.authenticate_with_credentials(email, password)

    user = User.find_by_email(email)
    result = user && user.authenticate(password)
    
    if result
      user = User.where(:email => email, :password => password)
      return user
    else 
      return nil
    end
  end
  



end
