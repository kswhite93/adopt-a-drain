class CheckinsController < ApplicationController
  def create
    @checkin = Checkin.create! do |c|
      c.thing = thing
      c.user = current_user
    end
    render json: @checkin
  end

  def show
    @checkin = Checkin.order(:created_at).last(25)
    render(json: @checkin)
  end

private

  def thing
    @thing ||= Thing.find params[:id]
  end
end
