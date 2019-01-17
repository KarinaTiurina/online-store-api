Rails.application.routes.draw do
  namespace 'api' do
    resources :products
    resources :images
    resources :orders
  end
end
