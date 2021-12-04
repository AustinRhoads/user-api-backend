class api::v1::UsersController < ApplicationController

    def index

    end

    def create 

    end

    def show

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