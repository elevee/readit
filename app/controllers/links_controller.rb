class LinksController < ApplicationController
  def index
    
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to @link
    else
      render action: 'new'
    end
  end

  def show
    @link = Link.find(params[:id])
    @comment = @link.comments.build
  end

end
