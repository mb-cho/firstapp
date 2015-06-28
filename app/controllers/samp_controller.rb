class SampController < ApplicationController
  def index
    msg = "<html><body><h1>Hello!</h1><p>‚ê‚¢‚é‚·</p></body></html>"
    render :text => msg
  end
end
