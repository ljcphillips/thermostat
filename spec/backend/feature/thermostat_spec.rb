require "capybara/rspec"
require_relative "../../../app"

Capybara.app = Thermostat

feature "Thermostat starts at 20 degrees" do
  scenario "Thermostat starts at 20 degrees" do
    visit("/")
    expect(page).to have_content '20 degrees'
  end
end

end
