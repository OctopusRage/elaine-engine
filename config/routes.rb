require 'api_version'

Rails.application.routes.draw do

  devise_for :customers
  devise_for :merchants
  if ENV['API_SUBDOMAIN']
    subdomain_constraint = { subdomain: ENV['API_SUBDOMAIN'].split(',') }
  else
    subdomain_constraint = {}
  end

  namespace :api, path: '/', constraints: subdomain_constraint do
    scope defaults: { format: 'json' } do
      scope module: :v1, constraints: ApiVersion.new('v1', true) do
        resources :users, only: [:index]
        namespace :customers do
          resources :register, only: [:create], controller: :register 
        end
      end
    end
  end 
end
