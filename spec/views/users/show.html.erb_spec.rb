require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      first_name: "First Name",
      last_name: "Last Name",
      species: "Species",
      gender: "Gender",
      weapon: "Weapon",
      vehicle: "Vehicle"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Species/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Weapon/)
    expect(rendered).to match(/Vehicle/)
  end
end
