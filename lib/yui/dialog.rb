module Yui
  class YDialog
    alias_method :wait_for_event_orig, :wait_for_event
    def wait_for_event(*args)
      if block_given?
        loop do
          yield wait_for_event_orig(*args)
        end
      else
        wait_for_event_orig(*args)
      end
    end
  end
end
