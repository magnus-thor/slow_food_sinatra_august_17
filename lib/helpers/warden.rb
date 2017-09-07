Warden::Strategies.add(:password) do
  def valid?
    params['user'] && params['user']['username'] && params['user']['password']
  end

  def authenticate!
    user = User.first(username: params['user']['username'])

    if user.nil?
      throw(:warden, message: "The username you entered does not exist.")
    elsif user.authenticate(params['user']['password'])
      success!(user)
    else
      throw(:warden, message: "The username and password combination ")
    end
  end

  # def check_input_fields!
  #   user = User.first(username: params['user']['username'])
  #
  #   if user.nil?
  #     user.check_input_fields(param[:user])
  #     success!(user)
  #   else
  #     throw(:warden, message: "The username you entered is taken.")
  #   end
  # end
end
