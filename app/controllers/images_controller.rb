class ImagesController < ApplicationController
  def new
      response = HTTParty.get 'https://apodapi.herokuapp.com/api/?start_date=2018-10-05&end_date=2018-10-10&thumbs=true&image_thumbnail_size=480&image_thumbnail_size=240'

      render json: JSON.parse(response.body)

  end
end
