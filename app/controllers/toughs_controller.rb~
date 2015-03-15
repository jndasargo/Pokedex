class ToughsController < ApplicationController
  def index
    @toughs = Tough.all
  end

  def show
    @tough = Tough.find(params[:id])
  end

  def new
  end
 
  def edit
    @tough = Tough.find(params[:id])
  end
  
  def create
     @tough = Tough.new(tough_params)
 
     @tough.save
     redirect_to @tough
  end

  def update
    @tough = Tough.find(params[:id])
 
    if @tough.update(tough_params)
      redirect_to @tough
    else
      render 'edit'
    end
  end

  def destroy
    @tough = Tough.find(params[:id])
    @tough.destroy
 
    redirect_to toughs_path
  end

  private
    def tough_params
      params.require(:tough).permit(:pokemon, :trainer, :type1, :type2, :type3, :type4, :move1, :move2, :move3, :move4, :weakness1, :weakness2, :evolution1, :evolution2, :evolution3)
    end
end
