require 'api_version_constraint'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # api.site.com/tasks este é o formato de URL que iremos ter
  # a versao 1 vai ser a default
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: "/" do
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, defaults: true) do
      resources :tasks
    end
  end

end
