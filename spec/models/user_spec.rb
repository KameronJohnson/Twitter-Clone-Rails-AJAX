require 'rails_helper'

describe User do
  it { should have_many :tweets }

  it { should validate_presence_of :email }
  it { should validate_presence_of :encrypted_password }
end
