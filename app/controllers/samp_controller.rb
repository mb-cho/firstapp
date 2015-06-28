# coding: utf-8
class SampController < ApplicationController
  def index
    msg = "<html><body><h1>Hello!</h1><p>れいるす</p></body></html>"
    render :text => msg
  end
end
