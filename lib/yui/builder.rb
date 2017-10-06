module Yui
  module Builder
    FACTORY = Yui::YUI::widget_factory

    FACTORY.methods.select { |meth| meth =~ /^create_/ }.each do |meth|
      define_method(meth.to_s.sub(/^create_/, '')) do |*args, **opts, &block|
        args.unshift(@__yui_builder_parent) unless meth =~ /_dialog/
        widget = FACTORY.send(meth, *args)
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
