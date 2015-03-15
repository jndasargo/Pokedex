class BeautiesController < ApplicationController
  def index
    @beauties = Beauty.all
  end

  def show
    @beauty = Beauty.find(params[:id])
  end

  def new
  end
 
  def edit
    @beauty = Beauty.find(params[:id])
  end
  
  def create
     @beauty = Beauty.new(beauty_params)
 
     @beauty.save
     redirect_to @beauty
  end

  def update
    @beauty = Beauty.find(params[:id])
 
    if @beauty.update(beauty_params)
      redirect_to @beauty
    else
      render 'edit'
    end
  end

  def destroy
    @beauty = Beauty.find(params[:id])
    @beauty.destroy
 
    redirect_to beauties_path
  end

  private
    def beauty_params
      params.require(:beauty).permit(:pokemon, :trainer, :type1, :type2, :type3, :type4, :move1, :move2, :move3, :move4, :weakness1, :weakness2, :evolution1, :evolution2, :evolution3)
    end

end
