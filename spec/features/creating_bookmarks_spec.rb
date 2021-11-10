feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to the Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'https://brave.com/')
    click_button('Submit')
    expect(page).to have_content 'https://brave.com/'
  end
end