Rails.application.routes.draw do
  match '/succession_entity/:id/up/'   => "Succession::Entities#up"
  match '/succession_entity/:id/down/' => "Succession::Entities#down"
end
