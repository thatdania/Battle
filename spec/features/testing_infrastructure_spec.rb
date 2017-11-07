require 'spec_helper'

feature '#home page' do
  scenario 'Testing infrastructure' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
