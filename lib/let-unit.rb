module Test
  module Unit
    class TestCase
      def self.let(x, &block)
        define_method x, block
      end
    end
  end
end
