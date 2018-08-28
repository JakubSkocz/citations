class CitationsController < ApplicationController

  def index
    @citations = Citation.order('created_at DESC').page(params[:page]).per(12)
  end


  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)
    if @citation.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def citation_params
    params.require(:citation).permit(:author, :citation)
  end
end
