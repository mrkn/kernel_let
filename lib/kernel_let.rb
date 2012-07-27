require "kernel_let/version"

module Kernel
  def let(variables, &block)
    scope = Object.new
    (class << scope; self; end).class_eval do
      variables.each do |name, value|
        define_method(name) { value }
      end
    end
    scope.instance_eval &block
  end
end
