# frozen_string_literal: true

module Coprl
  module Presenters
    module Plugins
      module MetaPixel
        module Components
          class MetaPixelEvent < DSL::Components::Base
            attr_reader :event_name, :event_data

            def initialize(event_name, event_data, **attribs_, &block)
              super(type: :meta_pixel_event, **attribs_, &block)
              @event_name = event_name
              @event_data = event_data
              expand!
            end
          end
        end
      end
    end
  end
end
