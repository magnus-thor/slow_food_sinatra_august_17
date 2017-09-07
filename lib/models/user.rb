require 'dm-validations'

class User
  include DataMapper::Resource

  property :id, Serial, key: true
  property :username, String, length: 128
  property :password, BCryptHash
  property :confirm_password, BCryptHash
  property :email, String
  property :phone_number, Integer

  # validates_format_of :email, as: :email_address
  # validates_length_of :phone_number, equals: 10


  def authenticate(attempted_password)
    if self.password == attempted_password
      true
    else
      false
    end
  end
end
