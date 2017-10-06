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
  end
end
