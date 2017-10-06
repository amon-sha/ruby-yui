module Yui
  module Builder
    Yui::YWidgetFactory.instance_methods.each do |meth|
      next unless meth =~ /^create_/
      define_method(meth.to_s.sub(/^create_/, '')) do |*args, **opts, &block|
        args.unshift(@__yui_builder_parent) unless meth =~ /_dialog/
        widget = Yui::YUI::widget_factory.send(meth, *args)
        opts.each { |opt, value| widget[opt] = value }
        if block
          old_parent, @__yui_builder_parent = @__yui_builder_parent, widget
          block.call
          @__yui_builder_parent = old_parent
        end
        widget
      end
    end
  end
end
