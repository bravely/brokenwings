require 'api_constraints'

Brokenwings::Application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :champions, only: [:index, :show]
    end
  end
  get 'admin/index'
  get 'riot/champion_update'

  root to: 'assets#index'
end
