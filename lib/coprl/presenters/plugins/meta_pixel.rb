# frozen_string_literal: true

require_relative 'meta_pixel/components/meta_pixel_component'
require_relative 'meta_pixel/components/meta_pixel_event'
require_relative 'meta_pixel/render'

module Coprl
  module Presenters
    module Plugins
      module MetaPixel
        module DSLComponents
          def meta_pixel(pixel_id, **attributes, &block)
            self << MetaPixel::Component.new(
              pixel_id,
              **attributes,
              parent: self,
              &block
            )
          end

          def create_meta_pixel_event(event_name, event_data, **attributes, &block)
            self << MetaPixel::Event.new(
              event_name,
              event_data,
              **attributes,
              parent: self,
              &block
            )
          end
        end
      end
    end
  end
end
