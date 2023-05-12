Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/getdata', to: 'welcome#hello'
    end
  end
  
  get '*path', to: redirect('https://www.ocnyamali.com/')
end
