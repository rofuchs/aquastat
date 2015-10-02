class WaterController < ApplicationController

  def create
    @water = Water.new(water_params)
 
    if @water.save
      redirect_to '/' 
    end
  end

## TODO making RESTFUL

private
  def water_params
    params.require(:water).permit(:datum, :cl2, :ph, :kh, :gh, :NO2, :NO3, :kommentar)
  end
end