require('minitest/autorun')
require('minitest/rg')
require_relative('person')

class TestPerson < Minitest::Test

  def setup
    @person1 = Person.new('Gregor', 25)
    @person2 = Person.new('Lewis', 20)
  end

  def test_name
    assert_equal('Gregor', @person1.name)
    assert_equal('Lewis', @person2.name)
  end

  def test_age
    assert_equal(25, @person1.age)
    assert_equal(20, @person2.age)
  end
end