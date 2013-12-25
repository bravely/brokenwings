Brokenwings::Application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
  end
  get 'admin/index'
  get 'riot/champion_update'

  root to: 'assets#index'
end
