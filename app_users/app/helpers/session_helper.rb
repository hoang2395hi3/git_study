module SessionHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
		# a ||= b <-> a = a || b : Nếu a = nil thì a = b

		return @current_user
	end

	def log_out
		session.delete[:user_id]
		@current_user = nil	
	end
end
