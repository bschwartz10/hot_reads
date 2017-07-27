class Api::V1::LinksController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    link = Link.new(link_params)
    if link.save
      render json: link
    end
  end

  private
    def link_params
      params.require(:link).permit(:url)
    end

end
