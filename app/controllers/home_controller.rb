class HomeController < ApplicationController

  def index
    @animals = Animal.all
    @waters = Water.all

    ## chart data
    @cl2_data = @waters.map {|i| [i.created_at, i.cl2]}
    @ph_data = @waters.map {|i| [i.created_at, i.ph]}
    @kh_data = @waters.map {|i| [i.created_at, i.kh]}
    @gh_data = @waters.map {|i| [i.created_at, i.gh]}
    @no3_data = @waters.map {|i| [i.created_at, i.NO2]}
    @no3_data = @waters.map {|i| [i.created_at, i.NO3]}

  end

end