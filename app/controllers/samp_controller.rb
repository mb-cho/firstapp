# coding: utf-8
class SampController < ApplicationController
  def index
    msg = '<html><body><h1>Hello!</h1><p>れいるす</p>
      <a href="hello">go hello</a>
    </body></html>'
    render :text => msg
  end
  def hello
    redirect_to :action => 'hello2'
  end
  def hello2
    msg = "<html><body><h1>Hello!</h1><p>Hello</p></body></html>"
    render :text => msg
  end
end
