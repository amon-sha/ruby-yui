module Yui
  class YCheckBox
    alias_method :checked?, :is_checked
    alias_method :checked=, :set_checked
    alias_method :label=, :set_label
  end
end
