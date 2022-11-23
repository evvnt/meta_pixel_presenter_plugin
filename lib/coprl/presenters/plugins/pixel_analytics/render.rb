module Coprl
  module Presenters
    module Plugins
      module PixelAnalytics
        module WebClientComponents
          def view_dir_meta_pixel(_pom)
            File.join(__dir__, '../../../../..', 'views', 'components')
          end

          def render_pixel_analytics(pom, render:, components:, index:)
            # this plugin does not render any component markup.
          end

          def render_header_pixel_analytics(pom, render:)
            meta_pixel_ids = pom.context[:meta_pixel_ids]
            return unless meta_pixel_ids

            render.call(:erb, :pixel_analytics_header,
                        views: view_dir_meta_pixel(pom),
                        locals: { meta_pixel_ids: meta_pixel_ids })
          end

          def render_meta_pixel_event(comp, render:, components:, index:)
            render.call :erb, :meta_pixel_event, views: view_dir_meta_pixel(comp),
                        locals: {comp: comp, components: components, index: index}
          end

        end
      end
    end
  end
end
