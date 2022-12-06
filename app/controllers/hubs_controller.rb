class HubsController < ApplicationController
    before_action :authorize

    #display hubs only when user is login
    def index
        user = User.find_by(id: session[:user_id])
        render json: Hub.all, status: :created
    end

     def show
        user = User.find_by(id: session[:user_id])
        hub = Hub.find(params[:id])
        render json: hub, serializer: UserWithHubsSerializer, status: :ok
    end

    #only login users all allow to add new hub
     def create
        user = User.find_by(id: session[:user_id])
        hub = Hub.create(hub_params.merge(user_id: user.id));

        if hub.valid?
            render json: hub, status: :created
        else
            render json: {errors: hub.errors.full_messages} , status: :unprocessable_entity
        end
    end

    private
    def authorize
        return render json: {errors: ["Not authorized"]}, status: :unauthorized unless session.include? :user_id
    end

    def hub_params
        params.permit(:name, :image, :location,:website_url,:description,:founder)
    end
end

