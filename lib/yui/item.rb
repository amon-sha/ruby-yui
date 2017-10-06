module Yui
  class YItem
    alias_method :data=, :set_data
    alias_method :selected=, :set_selected
    alias_method :selected?, :selected
  end
end
