module ActionView::Helpers::UrlHelper

  def up_button_to(name = nil, options = {}, html_options = {}, &block)
    if options.respond_to?(:succession_entity)
      options = succession_entity_up_path(entity(options))
    end
    button_to(name,options,html_options,&block)
  end


  def down_button_to(name = nil, options = {}, html_options = {}, &block)
    if options.respond_to?(:succession_entity)
      options = succession_entity_down_path(entity(options))
    end
    button_to(name,options,html_options,&block)
  end

  def up_link_to(name = nil, options = {}, html_options = {}, &block)
    if options.respond_to?(:succession_entity)
      options = succession_entity_up_path(entity(options))
    end
    link_to(name,options,html_options,&block)
  end

  def down_link_to(name = nil, options = {}, html_options = {}, &block)
    if options.respond_to?(:succession_entity)
      options = succession_entity_down_path(entity(options))
    end
    link_to(name,options,html_options,&block)
  end


  private

  def entity(options)
    entity = options.succession_entity
  end

  def succession_entity_up_path(entity)
    "succession_entity/#{entity.id}/up"
  end

  def succession_entity_down_path(entity)
    "succession_entity/#{entity.id}/down"
  end

end
