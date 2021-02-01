class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id]) 
        @user.update(user_params)
        redirect_to @user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).
            permit(:username, :email, :password)
    end
end
