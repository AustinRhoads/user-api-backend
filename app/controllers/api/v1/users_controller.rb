class api::v1::UsersController < ApplicationController

    def index
        @users = User.all

        if @users 

            render json: {
                status: 200,
                users: @users
            }

        else 
            render json: {
                status: 500, 
                errors: ['no users found']
            }

        end

    end

    def create 

        @user = User.new(user_params)

        if @user.save 



        else

        end

    end

    def show

       @user = User.find(params[:id]) 

    end

    def update

    end

    def destroy

    end

    private

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end

end