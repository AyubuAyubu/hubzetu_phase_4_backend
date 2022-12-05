class HubsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_records
   def index
        hub=Hub.all
        render json: hub, status: :ok
    end

    def show
        hub=find_hub
        render json: hub
       # render json:hub, serializer:HubReviewsSerializer
    end

    def create
        hub = Hub.create!(hub_params)
        render json: hub, status: :created
        #hero = Heroe.find(hero_power.heroe_id)
        #render json: hub, serializer: EachHubReviewSerializer, status: :created
    end

    def destroy
      hub=find_hub
      hub.destroy
      head :no_content
    end

    private
    def hub_params
        params.permit(:name,:image,:location,:website_url,:description,:founder)
    end

    def find_hub
       Hub.find(params[:id])
    end

    def render_not_found_response
        render json: {error: "Hub not found"}, status: :not_found
    end

     def render_invalid_records(invalid)
     render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end


end
