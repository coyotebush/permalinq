require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "should not be valid without a date" do
    event = Event.new
    event.name = "foo"
    assert !event.valid?, "Event is valid without a date"
  end

  test "should not be valid without a name" do
    event = Event.new
    event.date = 2.days.ago
    assert !event.valid?, "Event is valid without a name"
  end

  test "should require a date and name" do
    event = Event.new
    event.date = 2.days.ago
    event.name = "foo"
    assert event.valid?, "Event is not valid with a date and name"
  end
end
