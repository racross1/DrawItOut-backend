class PaintingsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index 
    paintings = Painting.all 
    all_paintings = []
    paintings.each do |p|
      result = {image: rails_blob_path(p.image, only_path: true), user_id: p.user_id,  topic_id: p.topic_id}
      all_paintings << result 
    end 
    render json: all_paintings
  end 
  
  def create
    painting = Painting.create(painting_params)
        
    result = {image: rails_blob_path(painting.image, only_path: true), user_id: painting.user_id,  topic_id: painting.topic_id}
        
    render json: result
  end
    
      private
        def painting_params
          params.permit(:user_id, :topic_id, :image)
        end
    

end
