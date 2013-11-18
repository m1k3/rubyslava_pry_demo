require 'spec_helper'

feature "Main articles page" do
  scenario "it displays all published articles" do
    Article.create!(title: 'Debugging with Pry', content: 'This is an article about debugging with pry...', published_at: 1.day.ago)

    visit root_url

    expect(page).to have_text('Debugging with Pry')
  end
end
