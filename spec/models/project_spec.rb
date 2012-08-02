require 'spec_helper'

describe Project do


    context 'Testing with a name' do
      before :each do
        @project = Project.new(:name => "This is a Project")
      end
      it { @project.save.should be true }
      it { @project.name.should_not be nil }
    end

    context 'Testing without a name' do
      before :each do
        @project = Project.new
      end
      it { @project.save.should be false }
    end

end