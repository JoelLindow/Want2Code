class CodersController < ApplicationController

  def index
    @coders = Coder.all
  end

  def show
    @coder = Coder.find(params[:id])
  end

  def new
    @coder = Coder.new
  end

  def create
    @coder = Coder.new(coder_params)
    if @coder.save
      redirect_to coder_path(@coder)
    else
      render :new
    end
  end

  def edit
    @coder = Coder.find(params[:id])
  end

  def update
    @coder = Coder.find(params[:id])
    @coder.update(coder_params)
    if @coder.save
      flash[:success] = "#{@coder.first_name} updated!"
      redirect_to coder_path(@coder)
    else
      render :edit
    end
  end

  private

  def coder_params
    params.require(:coder).permit(:first_name, :last_name, :about, :looking_for, :img_url)
  end
end
