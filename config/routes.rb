Brokenwings::Application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
  end

  root to: 'assets#index'
end
