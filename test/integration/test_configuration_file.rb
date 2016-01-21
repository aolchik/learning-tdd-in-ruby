require './app/integration/persisted_properties_calculator'
require './app/integration/properties'

require 'test/unit'
require 'test/unit/notify'

class ConfigurationFileTest < Test::Unit::TestCase
  def read_properties_and_setup_calculator()
    # This kind of integration test can be used
    # for outside-in development (scenario to code mapping)
    
    Properties properties = generate_valid_properties()

    String filename = create_test_property_file(properties)
    
    PersistedPropertiesCalculator calc = 
      PersistedPropertiesCalculator.new(filename)
    
    assert_properties_applied(calc, properties)
    
    change_configuration(calc)

    calc.save_properties
    
    assert_properties_were_saved(filename, 
      calc)
  end

  private
  def assert_properties_applied(calc, properties)
    raise NotImplementedError
  end

  def assert_properties_were_saved(filename, calc)
    raise NotImplementedError
  end

  def change_configuration(calc)
    raise NotImplementedError
  end

  def create_test_property_file
    raise NotImplementedError
  end

  def generate_valid_properties()
    raise NotImplementedError
  end
end
