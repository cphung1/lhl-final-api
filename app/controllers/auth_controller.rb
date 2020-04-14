class AuthController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login 
    # puts "TESTING"
    # puts params["email"]
    user = User.find_by_email(email_params)
    # # puts "TESTING"
    # # puts user
    if (user && user.authenticate(password_params))
      # session[:user_id] = @user.id
      render json: {user: user}
    else
      render json: {errors: "error"}
    end
  end

  private
  def email_params
    params["email"]
  end

  def password_params
    params["password"]
  end
end
