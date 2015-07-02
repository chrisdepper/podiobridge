class PodioController < ApplicationController
  protect_from_forgery except: :create
  skip_before_action :require_login, only: [:create]

  def create
    Log.create(
      sender: "PodioController", 
      message: params
      status: "success"
      )
    render nothing: true, status: 200
  end

end
