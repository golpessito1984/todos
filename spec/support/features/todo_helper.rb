module Features
  def create_todo(todo_title)
    click_link("Add a new todo")
    fill_in "Title", with:  todo_title #Label Reference
    # page is provied by Capybara
    click_button("Submit")
  end

  def display_todo(todo_title)
    have_css ".todo li", text: todo_title
  end

  def display_completes_todo(todo_title)
    have_css ".todo li.completed", text: todo_title
  end

end