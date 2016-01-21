class PersistedPropertiesCalculator
  def initialize(filename)
    raise NotImplementedError
  end

  def save_properties()
    raise NotImplementedError
  end
end