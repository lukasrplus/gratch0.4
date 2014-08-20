class BidsController < ApplicationController

  def new
    # if current_user.present?
    #   @gratch = Gratch.find_by(:id => params[:gratch_id])
    #   render new
    # else
    #   redirect_to root_url
    # end
    @bid = Bid.new
  end

  def create
   if params.has_key?(:bid)
    params.require(:bid).permit(:applicant_id => [])
    hash = params
    # HAS TO BE ADOPTED
    redirect_to root_url
    # HAS TO BE ADOPTED
    else redirect_to gratches_url
    end
  end

end
