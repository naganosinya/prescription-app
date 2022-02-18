class MicropostsController < ApplicationController
  def top
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.create(micropost_params)
    if @micropost.save
      redirect_to microposts_create_after_path
    else
      render :new
    end
  end

  def create_after
    # sleep 5
    # current_time = Micropost.last.created_at
    # while Time.now - current_time < 5 
      
    # end
    # redirect_to microposts_success_path
  end

  def success
    
  end

  def failed
    
  end

  def index
    @microposts = Micropost.all
  end

  private
  def micropost_params
    params.require(:micropost).permit(:content)
  end

end
