class ApplicationController < ActionController::Base
  def under_maintainence
    render plain: '網站正在改寫中喵～'
  end
end
