class CheckinsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def create
    # render(json:current_user)
    @checkin = Checkin.new(thing_id:params[:id])
    @checkin.user_id = current_user.id
    @checkin.save!
    render(json:@checkin)
  end

  def show
    @checkin = Checkin.take()
    render(json: @checkin)
  end
end
