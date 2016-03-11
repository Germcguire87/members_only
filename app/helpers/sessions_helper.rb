module SessionsHelper

def log_in(user)
	session[:user_id] = user.id
	token = SecureRandom.urlsafe_base64
	Digest::SHA1.hexdigest token
	cookies.permanent[:remember_token] = token
	user.remember_token = token
	current_user
end

def current_user
@current_user ||= User.find_by(id: session[:user_id])

end
def logged_in?
    !@current_user.nil?
  end

def log_out
	cookies.permanent[:remember_token] = nil
	session.delete(:user_id)
	@current_user = nil

end




end
