module Succession
  class EntitiesController < ActionController::Base
    def up
      entity = Succession::Entity.find(params[:id])
      entity.up
      redirect_to :back
    end

    def down
      entity = Succession::Entity.find(params[:id])
      entity.down
      redirect_to :back
    end
  end
end
