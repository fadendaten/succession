Succession::Engine.routes.draw do
  match 'entities/:id/up/'   => "entities#up", via: [:get, :post]
  match 'entities/:id/down/' => "entities#down", via: [:get, :post]
end
