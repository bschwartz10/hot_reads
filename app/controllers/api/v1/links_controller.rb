class Api::V1::LinksController < ApplicationController

  def create
    require "pry"; binding.pry
  end

  private
    def link_params
      params.require(:link).permit(:url)
    end

end
