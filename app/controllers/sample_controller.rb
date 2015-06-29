class SampleController < ApplicationController
  
  skip_before_action :verify_authenticity_token ,:only => [:index]
  
  layout 'mylayout'
  
  def index
    @title = 'This Is IndexPage'
    if params['msg'] == nil then
      @msg = 'パラメータはありません'
    else
      @msg = 'Parameter = ' + params['msg']
    end
    if request.post? then
      @msg = 'you type :' + params['text1']
    end
    #time = Time.now
    #@str = "現在の時刻 " + time.strftime("%Y - %m - %d %H:%m:%S") 
  
  end
  
  def helo
    redirect_to :action=>'index' , :params=>{'msg'=>'Hello'}
  end
end
