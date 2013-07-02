require 'helper'

class TestLetUnit < Test::Unit::TestCase
  let(:one)  { 1 }
  let(:time) { Time.now }

  should "allow let statements" do
    assert_equal one, 1
  end

  should "memoize the let" do
    current = time
    assert_equal current, time
    assert_not_equal current, one
  end
end
