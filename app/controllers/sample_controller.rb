class SampleController < ApplicationController
  
  skip_before_action :verify_authenticity_token ,:only => [:index]
  
  layout 'mylayout'
  
  def index
    if request.post? then
      obj = Sample.new(
        :name => params['name'],
        :age =>  params['age'],
        :mail => params['mail'],
        :tel =>  params['tel']
      )
      obj.save
    end
     
    @title = "index Page"
    @datas=Sample.all
      
  end
  
  def show
    @title = "Show ID = " + params[:id]
    @result = Sample.find(params[:id])
  end
  
  def update
    if request.post? then
      @title = "Update Id  Post= " 
      #@result.name = params['name']
      #@result.age = params['age'].to_i
      #@result.tel = params['tel']
      #@result.mail = params['mail']
      #@result.save
      #redirect_to :action => "index"
      #@result = Sample.find(params[:id])
      @title = "Update Id POst= " 
    else
      @result = Sample.find(params[:id])
      @title = "Update Id = " 
    end
  end
  
  def delete
    obj = Sample.find(params[:id])
    obj.destroy
    redirect_to :action => "index"
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
