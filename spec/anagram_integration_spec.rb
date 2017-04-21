require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('main form output', {:type => :feature}) do
  it('submits filled forms, and checks the output') do
    visit('/')
    fill_in('main_text', :with => 'dormitory')
    fill_in('test_text', :with => 'dirty room')
    click_button('Check!')
    expect(page).to have_content("It's an anagram!")
  end
end
