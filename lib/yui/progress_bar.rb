module Yui
  class YProgressBar
    alias_method :value=, :set_value
    alias_method :label=, :set_label
  end
end
