require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(description:"test"),
      Category.create!(description:"test 1")
    ])
  end

  it "renders a list of categories" do
    render
  end
end
