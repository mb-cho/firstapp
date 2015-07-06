class SampleController < ApplicationController
  
  skip_before_action :verify_authenticity_token ,:only => [:index]
  
  layout 'mylayout'
  
  def index
    @title = "index Page"
    @datas=Sample.all
      
  end
  
  def helo
    redirect_to :action=>'index' , :params=>{'msg'=>'Hello'}
  end
  def data_table
    title='This is index2 Page'
    datas = [
        {:name=>'taro',:tel=>'1234456',:mail=>'aaa@sss'},
        {:name=>'taro1',:tel=>'21234456',:mail=>'2aaa@sss'},
        {:name=>'taro2',:tel=>'31234456',:mail=>'3aaa@sss'}
    ]
    render :layout=>'mylayout2',:locals =>{
      :title=>title,
      :datas=>datas
    }
  end
end
