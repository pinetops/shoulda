module ThoughtBot
  module Shoulda
    module RailsRouting
      module Macros
        def should_route(method, path, options)
          unless options[:controller]
            options[:controller] = self.class.name.gsub(/ControllerTest$/, '').tableize
          end
          options[:controller] = options[:controller].to_s
          options[:action] = options[:action].to_s

          populated_path = path.dup
          options.each do |key, value|
            populated_path.gsub!(key.inspect, value.to_s)
          end

          should_name = "route #{method.to_s.upcase} #{populated_path} to/from #{options.inspect}"

          should should_name do
            assert_routing({:method => method, :path => populated_path}, options)
          end
        end

        def should_route_restful_index(resource)
          should_route :get, "/:controller",
            :controller => resource, :action => 'index'
        end

        def should_route_restful_new(resource)
          should_route :get, "/:controller/:action",
            :controller => resource, :action => 'new'
        end

        def should_route_restful_show(resource)
          should_route :get, "/:controller/:id",
            :controller => resource, :action => 'show', :id => '123'
        end

        def should_route_restful_edit(resource)
          should_route :get, "/:controller/:id/:action",
            :controller => resource, :action => 'edit', :id => '123'
        end

        def should_route_restful_update(resource)
          should_route :put, "/:controller/:id",
            :controller => resource, :action => 'update', :id => '123'
        end

        def should_route_restful_create(resource)
          should_route :post, "/:controller",
            :controller => resource, :action => 'create'
        end

        def should_route_restful_destroy(resource)
          should_route :delete, "/:controller/:id",
            :controller => resource, :action => 'destroy', :id => '123'
        end

        def should_route_restful_resources(resources, options = {}, &blk)
          excludes = options[:excludes] || []

          context "Restful resources #{resources.to_sym.inspect}" do
            should_route_restful_index resources unless excludes.include?(:index)
            should_route_restful_new resources unless excludes.include?(:new)
            should_route_restful_show resources unless excludes.include?(:show)
            should_route_restful_edit resources unless excludes.include?(:edit)
            should_route_restful_update resources unless excludes.include?(:update)
            should_route_restful_create resources unless excludes.include?(:create)
            should_route_restful_destroy resources unless excludes.include?(:destroy)

            if members = options[:members]
              members.each do |action, method|
                should_route method.to_sym, "/:controller/:id/:action",
                  :controller => resources, :action => action, :id => '123'
              end
            end

            if collection = options[:collection]
              collection.each do |action, method|
                should_route method.to_sym, "/:controller/:action",
                  :controller => resources, :action => action
              end
            end

            blk.call unless blk.nil?
          end
        end

      end
    end
  end
end
