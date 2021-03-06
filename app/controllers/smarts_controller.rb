class SmartsController < ApplicationController
  def index
    @smarts = Smart.all
  end

  def show
    @smart = Smart.find(params[:id])
  end

  def new
  end
 
  def edit
    @smart = Smart.find(params[:id])
  end

  def create
     @smart = Smart.new(smart_params)
 
     @smart.save
     redirect_to @smart
  end

  def update
    @smart = Smart.find(params[:id])
 
    if @smart.update(smart_params)
      redirect_to @smart
    else
      render 'edit'
    end
  end

  def destroy
    @smart = Beauty.find(params[:id])
    @smart.destroy
 
    redirect_to beauties_path
  end

  private
    def smart_params
      params.require(:smart).permit(:pokemon, :trainer, :type1, :type2, :type3, :type4, :move1, :move2, :move3, :move4, :weakness1, :weakness2, :evolution1, :evolution2, :evolution3)
    end
end
