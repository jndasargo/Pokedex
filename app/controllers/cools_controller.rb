class CoolsController < ApplicationController
  def index
    @cools = Cool.all
  end

  def show
    @cool = Cool.find(params[:id])
  end

  def new
  end
 
  def edit
    @cool = Cool.find(params[:id])
  end
  
  def create
     @cool = Cool.new(cool_params)
 
     @cool.save
     redirect_to @cool
  end

  def update
    @cool = Cool.find(params[:id])
 
    if @cool.update(cool_params)
      redirect_to @cool
    else
      render 'edit'
    end
  end

  def destroy
    @cool = Cool.find(params[:id])
    @cool.destroy
 
    redirect_to cools_path
  end

  private
    def cool_params
      params.require(:cool).permit(:pokemon, :trainer, :type1, :type2, :type3, :type4, :move1, :move2, :move3, :move4, :weakness1, :weakness2, :evolution1, :evolution2, :evolution3)
    end
end

  
