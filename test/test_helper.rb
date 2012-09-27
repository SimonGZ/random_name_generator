ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  def assert_created(model)
    assert model, "Model was not defined"
    assert_equal [ ], model.errors.full_messages
    assert model.valid?, "Model failed to validate"
    assert !model.new_record?, "Model is still a new record"
  end

  def assert_errors_on(model, *attrs)
    found_attrs = [ ]

    model.errors.each do |attr, error|
      found_attrs << attr
    end

    assert_equal attrs.flatten.collect(&:to_s).sort, found_attrs.uniq.collect(&:to_s).sort
  end
  
end
