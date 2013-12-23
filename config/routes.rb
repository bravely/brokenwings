Brokenwings::Application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
  end
  get 'admin/index'

  root to: 'assets#index'
end
