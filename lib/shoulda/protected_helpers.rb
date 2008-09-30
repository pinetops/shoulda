module ThoughtBot # :nodoc:
  module Shoulda # :nodoc:
    module Protected # :nodoc:
      # Returns the values for the entries in the args hash who's keys are listed in the wanted array.
      # Will raise if there are keys in the args hash that aren't listed.
      def get_options!(args, *wanted)
        ret  = []
        opts = (args.last.is_a?(Hash) ? args.pop : {})
        wanted.each {|w| ret << opts.delete(w)}
        raise ArgumentError, "Unsupported options given: #{opts.keys.join(', ')}" unless opts.keys.empty?
        return *ret
      end

      # Returns the class constant of the class being tested, as determined by the test class name.
      #
      #   class UserTest; model_class; end => User
      #   class UsersControllerTest; class_under_test; end => UsersController
      def class_under_test
        self.name.gsub(/Test$/, '').constantize
      end
      alias_method :model_class, :class_under_test
      
    end
  end
end
