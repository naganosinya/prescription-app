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
    pointer = rand(1..10)
    @redirect_path = if pointer > 3
      microposts_success_path
    else
      microposts_failed_path
    end
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
