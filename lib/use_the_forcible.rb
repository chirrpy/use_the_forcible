require 'use_the_forcible/version'

module UseTheForcible
  def forcible(attribute, overriding_value)
    define_method(attribute) do
      overriding_value
    end

    define_method("#{attribute}=") do |value|
      write_attribute(attribute, overriding_value)
    end
  end
end
