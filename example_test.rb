require 'minitest/autorun'

class ExampleTest < Minitest::Test
  def test_truth
    assert true
  end

  def test_truth2
    assert 1
  end

  def will_not_be_called
    assert false
  end
end