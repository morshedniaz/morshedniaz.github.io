# Polyfill for Ruby 4+ where `tainted?` was removed from String
unless Object.new.respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
