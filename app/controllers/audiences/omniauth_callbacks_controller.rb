class Audiences::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @audience = Audience.find_for_facebook_oauth(request.env["omniauth.auth"], current_audience)

    if @audience.persisted?
      sign_in_and_redirect @audience, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_audience_registration_url
    end
  end
end