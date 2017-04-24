class StaticPagesController < ApplicationController
  def home
    @titles = "LATEST SCENERIES"
    @sceneries = Image.all.order("created_at DESC")
  if params[:search]
     @sceneries = Image.search(params[:search]).order("created_at DESC")
    if (@sceneries.count > 0)
      @titles = "RESULT"
    else
      @titles = "NOT FOUND!!"
    end
  end
  end

  def help
  end
end
