module Test
  module Unit
    class TestCase
      def self.let(x, &block)
        define_method x do
          ivar_key = "@___#{x}"
          unless instance_variable_defined?(ivar_key)
            value = yield block
            instance_variable_set(ivar_key, value)
          end
          instance_variable_get(ivar_key)
        end
      end
    end
  end
end
