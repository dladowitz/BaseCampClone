require 'spec_helper'

describe User do
  before :each do
    @user = User.new
  end

    it { should be_an_instance_of User }


end