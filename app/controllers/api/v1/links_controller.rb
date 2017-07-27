class Api::V1::LinksController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @links = Link.hot_reads
    render json: @links
  end

  def create
    link = Link.find_or_initialize_by(link_params)
      if link.persisted?
        link.update(count: link.count += 1)
        render json: link
      else
        link.save
        render json: link
      end
  end

  private
    def link_params
      params.require(:link).permit(:url)
    end

end
