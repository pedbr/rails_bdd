Given("I visit the {string} page") do |string|
    visit root_path
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
  
  Then("I should be on {string} page") do |string|
    article = Article.find_by(title: page)
    expect(current_path).to eq article_path(article)
  end
  