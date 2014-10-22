require 'rails_helper'

RSpec.describe StakeholdersController, :type => :controller do
  it { should validate_presence_of :name }
end
