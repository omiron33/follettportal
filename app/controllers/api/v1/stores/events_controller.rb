class Api::V1::Stores::EventsController < ApplicationController
  def show
    render json: Store.find(params[:id]).all_event_types
  end
end