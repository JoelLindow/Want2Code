class LanguagesController < ApplicationController

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      redirect_to languages_path
    else
      render :new
    end
  end

  def destroy
    language = Language.find(params[:id])
    language.destroy
    redirect_to languages_path
    flash[:success] = "Language has been deleted from the database!"
  end

  private

  def language_params
    params.require(:language).permit(:name)
  end
end
