defmodule Blogger.HomePageTest do
  use Blogger.ConnCase

  use Hound.Helpers

  hound_session

  test "Home Page" do
    navigate_to "/"
    assert page_source =~ "Blogger!"
  end

  test "Home with Posts" do
    posts = [%Blogger.Post{title: "My First Post!"}, %Blogger.Post{title: "My Second Post!"}]
    Enum.map(posts, fn(x) -> Blogger.Repo.insert(x) end)

    navigate_to "/"
    assert page_source =~ "My First Post!"
    assert page_source =~ "My Second Post!"
  end
end
