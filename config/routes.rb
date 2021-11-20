Rails.application.routes.draw do

  # don't visit / , visit /logs instead
  root 'logs#fake_index'
  devise_for :users
  get '/x', to: 'logs#x'
  post '/x', to: 'logs#create'
  resources :logs do
    collection do
    #  get 'x'
    #  post 'x'
    #  put 'x'
    end
  end
end
