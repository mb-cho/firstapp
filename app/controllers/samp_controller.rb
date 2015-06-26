class SampController < ApplicationController
  def index
    msg = "<html><body><h1>Hello!</h1><p>samp</p></body></html>"
    render :text => msg
  end
end
