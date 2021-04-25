Rails.application.routes.draw do
  
  get 'message/index'
  root to: "message#index"

end
