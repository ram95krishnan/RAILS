class SubscribersController < ApplicationController

  def create
    params.require("request")
    @subscriber  = Response.new()
    @subscriber.name = params[:request][:name]
    @subscriber.mail = params[:request][:mail]
    @subscriber.html = params[:request][:html]
    @subscriber.css = params[:request][:css]
    @subscriber.js = params[:request][:js]
    @subscriber.react = params[:request][:react]
    if @subscriber.save
        return render plain: "saved name #{@subscriber.react}"
    else
        return render plain: "failed"
    end
  end
end
