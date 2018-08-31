class SelectItemController < ApplicationController
  def show
  end
  
  def search
    if params[:physical] == nil
      params[:physical] = 3
    end
    
    if params[:playing_style] == nil
      params[:playing_style] = 1
    end
    
    if params[:support] == nil
      params[:support] = 1
    end
    
    if params[:spin] == nil
      params[:spin] = 1
    end
    
    if params[:feeling] == nil
      params[:feeling] = 1
    end
    
    @rackets = Racket.where(point_physical: params[:physical], point_playing_style: params[:playing_style], point_support: params[:support], point_spin: params[:spin], point_feeling: params[:feeling])
    render '/result/show'
  end
  
end

