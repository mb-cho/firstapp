class SampController < ApplicationController
  def index
    msg = "<html><body><h1>Hello!</h1><p>�ꂢ�邷</p></body></html>"
    render :text => msg
  end
end
