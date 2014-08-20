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
    params.require(:bid).permit(:applicant_id => [])
    hash = params
    stop
    redirect_to root_url
  end

end
