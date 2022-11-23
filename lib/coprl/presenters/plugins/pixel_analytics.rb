# frozen_string_literal: true

require_relative 'pixel_analytics/components/meta_pixel_component'
require_relative 'pixel_analytics/components/meta_pixel_event'
require_relative 'pixel_analytics/render'

module Coprl
  module Presenters
    module Plugins
      module PixelAnalytics
        module DSLComponents
          def meta_pixel(pixel_id, **attributes, &block)
            self << PixelAnalytics::MetaPixelComponent.new(
              pixel_id,
              **attributes,
              parent: self,
              &block
            )
          end

          def create_meta_pixel_event(event_name, event_data, **attributes, &block)
            self << PixelAnalytics::MetaPixelEvent.new(
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
