Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # api.site.com/tasks este é o formato de URL que iremos ter
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    
  end

end
