require 'spec_helper'

feature "Article create spec" do
  scenario "create article" do
    visit new_article_path

    #binding.pry
    within "//div[@class='article_form_container']" do
      fill_in 'Title', with: 'Debugging with Pry'
      fill_in 'Content', with: 'Lorem ipsum'
    end

    click_button 'Create'

    expect(page).to have_text('Debugging with Pry')
  end
end

#within "//div[@class='article_form_container']" do
  #fill_in 'Title', with: 'Debugging with Pry'
  #fill_in 'Content', with: 'Lorem ipsum'
#end

#within "//div[@class='article_form_wrapper']" do
  #fill_in :title, with: 'Debugging with Pry'
  #fill_in :content, with: 'Lorem ipsum'
#end
