class MicropostsController < ApplicationController
  def top
    @microposts_count = Micropost.where(allow: true)&.count || 0
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
    @radio_type = %w[1 2].sample

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
    @radio_type = %w[1 2].sample
  end

  def failed
    @radio_type = %w[1 2].sample
  end

  def index
    if params[:allow] == 'true'
      @title = '時効成立一覧'
      @subtitle = '時効不成立一覧'
      @link_path = microposts_path(allow: 'false')
      @microposts = Micropost.where(allow: true)
    elsif params[:allow] == 'false'
      @title = '時効不成立一覧'
      @subtitle = '時効成立一覧'
      @link_path = microposts_path(allow: 'true')
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
