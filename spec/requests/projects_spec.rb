require 'spec_helper'

describe "Projects" do
  subject { page }
  describe "project list page" do
      before { visit '/projects'}
      it { should have_content "Projects" }
  end
end
