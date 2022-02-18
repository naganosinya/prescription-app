class MicropostsController < ApplicationController

  def top
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.create(micropost_params)
    if @micropost.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @microposts = Micropost.all
  end

  private
  def micropost_params
    params.require(:micropost).permit(:content)
  end
end
