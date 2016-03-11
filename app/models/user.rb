class User < ActiveRecord::Base
	has_secure_password
	before_save { remember_token_encrypt}





def remember_token_encrypt

	self. remember_token = SecureRandom.urlsafe_base64
	Digest::SHA1.hexdigest self.remember_token 

end

end
