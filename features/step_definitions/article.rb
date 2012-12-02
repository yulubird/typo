Then /^I should see a articles with the title of "([^"]*)"$/ do |article|
  if page.respond_to? :should
    page.should have_content(article)
  else
    assert page.has_content?(article)
  end
end
