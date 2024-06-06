class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
    render html: 'Hello, World!'
  end

  private

  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url, see: :see_other
  end
end
