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
    @bid = Bid.new
    @bid.gratch_id = params[:bid][:gratch_id]
    @bid.applicant_id = current_user.id
    @bid.number_of_friends = params[:bid][:id].count
    @bid.message = params[:bid][:message]
    @bid.save

    fb_array = params[:bid][:id]

    fb_array.each do |f|
      b = Bidfriend.new
      b.bid_id = @bid.id
      b.friend_id = f
      b.save

    end




    # HAS TO BE ADOPTED
    redirect_to root_url
    # HAS TO BE ADOPTED
    else redirect_to gratches_url
    end
  end

end
