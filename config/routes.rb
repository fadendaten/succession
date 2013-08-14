Succession::Engine.routes.draw do
  match 'entities/:id/up/'   => "entities#up"
  match 'entities/:id/down/' => "entities#down"
end
