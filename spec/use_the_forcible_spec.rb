require 'spec_helper'

class Forcible < ActiveRecord::Base
  extend UseTheForcible

  forcible :foo, 'something'
end

describe UseTheForcible do
  let(:forcible) { Forcible.new }

  it 'overrides anything the forced attribute is set to' do
    forcible.foo = 'something_else'

    forcible.attributes['foo'].should eql 'something'
  end

  it 'always reads the forced value even if the attribute currently is not set' do
    forcible.foo.should eql 'something'
  end
end
