class TopicsController < ApplicationController
     skip_before_action :authorized, only: [:index]
    
    def index
        topics = Topic.all
        render json: topics
    end 
end
