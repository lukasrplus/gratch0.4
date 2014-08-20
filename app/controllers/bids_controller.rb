class BidsController < ApplicationController

  def new
      @gratch = Gratch.find_by(:id => params[:gratch_id])
      @host = User.find_by(:id => @gratch.host_id)
      @bid = Bid.new
  end

  def create
   if params.has_key?(:bid)
    params.require(:bid).permit(:applicant_id => [])
    hash = params
    bid = Bid.new

    # HAS TO BE ADOPTED
    redirect_to root_url
    # HAS TO BE ADOPTED
    else redirect_to gratches_url
    end
  end

end
