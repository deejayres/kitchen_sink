KitchenSink::Engine.routes.draw do
  get ':path', to: 'sinks#sink'
  root to: 'sinks#sink'
end
