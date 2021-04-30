Given('I am on Testataditesti home page') do
    visit 'songs'
end

When('I follow {string}') do |string|
	click_link(string)
end

Then('I should be on the Testataditesti home page') do
	current_path = URI.parse(current_url).path
	current_path == '/songs'
end


Then('I should see {string}') do |string|
    assert page.has_content?(string)
end


When('I fill in {string} with {string}') do |field,value|
	fill_in(field, :with => value)
end

When('I press {string}') do |string|
	click_button(string)
end

Then('I should be on the Create New Song Page') do
    current_path = URI.parse(current_url).path
	current_path == '/songs/new'
end