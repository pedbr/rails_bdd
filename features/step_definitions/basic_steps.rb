Given("I visit the {string} page") do |string|
    visit root_path
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
end
  
When("I click {string} link") do |button|
    click_on button
end
  
When("I fill in {string} with {string}") do |field, content|
    fill_in field, with:content
end
  
When("I click {string} button") do |button|
    click_on button
end

When("I visit the site") do
    visit root_path
end