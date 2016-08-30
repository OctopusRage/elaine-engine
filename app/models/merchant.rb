class Merchant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  VALID_GENDER = %w(male female)
  before_create :set_auth_token!

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :gender, inclusion: { in: VALID_GENDER },
    allow_blank: true, case_sensitive: false
  validates :name, presence: true , length: { maximum: 255 }

  def age(dob)
    now = Time.now.utc.to_date
    if dob
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
  end

  def set_auth_token!
    begin
        self.authentication_token = Devise.friendly_token
    end while self.class.exists?(authentication_token: authentication_token)
  end

  ## JSON REPRESENTATION
  def credential_as_json(options={})
    {
      id: id,
      name: name,
      email: email,
      authentication_token: authentication_token,
      gender: gender,
      date_of_birth: date_of_birth,
      phone_number: phone_number || "",
      verified: verified,
      image: image
    }
  end

  def as_json(options={})
    {
      id: id,
      name: name,
      email: email,
      gender: gender,
      age: age(date_of_birth) || 0,
      date_of_birth: date_of_birth,
      phone_number: phone_number ||"",
      verified: verified,
      image: image,
      city: city 
    }
  end
end
