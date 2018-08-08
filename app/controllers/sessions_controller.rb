class SessionsController < Devise::SessionsController
	#after_action :is_admin, only: [:create]

	def new
		super
	end

	def create
		self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    unless resource.is_admin?
	 		#redirect_to root_path
	 		respond_with resource, location: after_sign_in_path_for(resource)
	 	else
	 		redirect_to admin_dash_board_index_path
	 	end
	end

	private
	def is_admin
	 	unless resource.is_admin?
	 		redirect_to root_path
	 	else
	 		redirect_to admin_dash_board_index_path
	 	end
	end
end