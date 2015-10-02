class AnimalController < ApplicationController

def index
  @animals = Animal.all
end

def new
  @animal = Animal.new
end
 
## POST /animal
def create

  @animal = Animal.new(animal_params)
  @animal.avatar = params[:file ]
  @animal.save	
   
  if @animal.save
    redirect_to '/'	
  end
end

##  # GET /animal/:id
def show
  @animal = Animal.find_by(id: params[:id])
  unless @animal
    redirect_to "index", status: 404 
  end 
end

# GET /animal/:id/edit 
def edit
  @animal = Animal.find_by(id: params[:id])
  render "edit" 
end

# DELETE /animal/:id
def destroy
  @animal = Animal.find_by(id: params[:id])
  @animal.destroy
  flash[:success] = 'Deleted'
  redirect_to "/"
end

##  # PATCH/PUT /animal/:id
def update
  @animal = Animal.find_by(id: params[:id])
  if @animal.update_attributes(animal_params)
    flash[:success] = 'Updated'
    redirect_to "/"
  else
    flash.now.alert = "Failed"
    render "_editForm"
  end
end

 private
  def animal_params    
    params.require(:animal).permit(:fischart, :farbe, :anzahl, :sex, :kommentar,:avatar)
  end

end