require 'helper'

class TestLetUnit < Test::Unit::TestCase
  let(:one) { 1 }

  should "allow let statements" do
    assert_equal one, 1
  end
end
