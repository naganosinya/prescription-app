class MicropostsController < ApplicationController
  def top
    @microposts_count = Micropost.where(allow: true).count
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
    @radio_type = Micropost.last.radio_type

    pointer = rand(1..10)
    @redirect_path = if pointer > 3
                       m = Micropost.last
                       m.allow = true
                       m.save
                       microposts_success_path
                     else
                       m = Micropost.last
                       m.allow = false
                       m.save
                       microposts_failed_path
                     end
  end

  def success
    @radio_type = Micropost.last.radio_type
  end

  def failed
    @radio_type = Micropost.last.radio_type
  end

  def index
    if params[:allow] == 'true'
      @title = '成立した一覧'
      @microposts = Micropost.where(allow: true)
    elsif params[:allow] == 'false'
      @title = '成立しなかった一覧'
      @microposts = Micropost.where(allow: false)
    else
      redirect_to root_path
    end
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :radio_type)
  end

end
