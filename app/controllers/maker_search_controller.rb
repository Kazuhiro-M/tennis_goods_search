class MakerSearchController < ApplicationController
    def search
      if params[:babolat]
        maker_id = 1
      
      elsif params[:head]
        maker_id = 2
      
      elsif params[:prince]
        maker_id = 3

      elsif params[:srixon]
        maker_id = 4

      elsif params[:wilson]
        maker_id = 5

      elsif params[:yonex]
        maker_id = 6
      
      else 
        maker_id = 0
      end
      @rackets = Racket.where(maker_id: maker_id, spec_model: 1)
      render '/result/show'
    end
end
