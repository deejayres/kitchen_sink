Rails.application.routes.draw do
  get 'test', to: 'test#test', as: 'test'
  get '/asdf/bsdf', to: 'test#test', as: 'asdf'
  mount KitchenSink::Engine => '/'
end
