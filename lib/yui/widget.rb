module Yui
  class YWidget
    alias_method :enabled=, :set_enabled
    alias_method :disable!, :set_disabled
    alias_method :enabled?, :is_enabled

    def [](name)
      prop = get_property(name.to_s)
      case prop.type_as_str
      when 'Bool'
        prop.bool_val
      when 'String'
        prop.string_val
      when 'Integer'
        prop.integer_val
      end
    end

    def []=(name, value)
      set_property(name.to_s, Yui::YPropertyValue.new(value))
    end
=begin
    def activated(&block)
      @activated = block
    end
    alias_method :clicked, :activated

    def value_changed(&block)
      @value_changed = block
    end
    
    def selection_changed(&block)
      @selection_changed = block
    end

    def activated_fire(event)
      @activated ? @activated.call(event) : :continue
    end

    def value_changed_fire(event)
      @value_changed ? @value_changed.call(event) : :continue
    end

    def selection_changed_fire(event, dialog)
      @selection_changed ? @selection_changed.call(event) : :continue
    end
=end
  end
end
