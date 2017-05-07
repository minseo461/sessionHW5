class ContentsController < ApplicationController
  before_action :authorize, only: [:new, :edit, :update, :destroy]
  
  def index
    @contents = Content.all
    
    
  end

  def show
    @content = Content.find(params[:id])
    @comment = Comment.new(content: @content)
  end

  def new
    @content = Content.new
    
  end

  def create
    @content = Content.new(content_params)
    @content.save
    redirect_to @content

  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    @content = Content.find(params[:id])
    @content.update(content_params)
    redirect_to @content
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    
    redirect_to contents_url
    
    
  end
  
  private
  
  def content_params
    params.require(:content).permit(:title, :body)
  end
  
  
  
end
