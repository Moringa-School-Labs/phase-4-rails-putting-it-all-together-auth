class UsersController < ApplicationController

    def create 
        user = User.create!(user_params)
        session[:user_id] = user_id
        render json: user, status: :created
    end

    def show 
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end

end
