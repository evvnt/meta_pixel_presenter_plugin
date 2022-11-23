# frozen_string_literal: true

module Coprl
  module Presenters
    module Plugins
      module PixelAnalytics
        class MetaPixelComponent < DSL::Components::Base
          attr_reader :pixel_id

          def initialize(pixel_id, **attributes, &block)
            @pixel_id = pixel_id
            super(type: :meta_pixel_tag, **attributes, &block)
            expand!
          end
        end
      end
    end
  end
end
