class SampleController < ApplicationController
  
  skip_before_action :verify_authenticity_token ,:only => [:index]
  
  layout 'mylayout'
  
  def index
    #@title = 'This Is IndexPage'
    title = 'This Is IndexPage Local Var'
    param_datas = [
      "こんにちは",
      "sampleData",
      "さよなら"
    ]
    if params['msg'] == nil then
      @msg = 'パラメータはありません'
    else
      @msg = 'Parameter = ' + params['msg']
    end
    if request.post? then
      @msg = 'you type :' + params['text1']
    end
    
    render :layout=>"mylayout",
                :locals => {:title => title, 
                            :param_datas => param_datas}
    
    #time = Time.now
    #@str = "現在の時刻 " + time.strftime("%Y - %m - %d %H:%m:%S") 
  
  end
  
  def helo
    redirect_to :action=>'index' , :params=>{'msg'=>'Hello'}
  end
end
