require 'spec_helper'

describe 'enumerator' do
  it 'should define declare_trait' do
    Enumerator.instance_methods.should include(:declare_trait)
  end
  it 'should define ensure_trait' do
    Enumerator.instance_methods.should include(:ensure_trait)
  end
end
