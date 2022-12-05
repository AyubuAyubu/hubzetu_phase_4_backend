class ReviewsController < ApplicationController
   def create
        hub_review = Review.create!(hub_params)
        hub = Hub.find(hub_review.hub_id)
        render json: hub
        #render json: hub, serializer: EachHeroPowerSerializer, status: :created
    end

    def index
        review=Review.all
        render json: review, status: :ok
    end

    private
    def hub_params
        params.permit(:hub_id, :user_id,:comment)
    end
end
