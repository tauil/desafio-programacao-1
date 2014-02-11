require 'spec_helper'

describe Dump do
  it { should validate_presence_of(:dumpfile) }
end
