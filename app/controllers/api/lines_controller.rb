class Api::LinesController < ApplicationController

  def show
    render json: Line.find(params[:id])
  end

  def random
    render :json => Line.includes(:character).order('random()').first
  end

end
