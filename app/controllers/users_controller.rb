class UsersController < ApplicationController
        before_action :authorize, only: [:show]
        
        def create
          user = User.create(user_params)
          if user.valid?
              session[:user_id] = user.id
              render json: user, status: :created
          else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end

        def show
          user = User.find_by(id: session[:user_id])
          render json: user
       end

    private
    # authorizations
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

    # params
    def user_params
        params.permit(:name, :email, :password)
    end

    end
end
