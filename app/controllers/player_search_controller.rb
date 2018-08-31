class PlayerSearchController < ApplicationController
  def show
    @maleplayers = Player.where(sex: 1).order(nickname: :asc)
    @femaleplayers = Player.where(sex: 2)
  end

  def search
      @rackets = Racket.where(id: params[:racket_id2])
      render '/result/show'
  end
end
