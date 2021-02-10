class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :edit, :destroy]
    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        if @user
            @user.save
        end
    end

    def edit
        render json: @user
    end

    def update
        @user.update(user_params)
    end

    def destroy
        @user.destroy
    end

    private

    def set_user
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
