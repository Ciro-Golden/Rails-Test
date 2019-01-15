class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by_email params[:email]
        if user&authenticate(params[:password])
            sessions[:user_id] = user_id
            redirect_to rooth_path, notice: "Logged-In"
        else
            render :new
        end
    end
end
