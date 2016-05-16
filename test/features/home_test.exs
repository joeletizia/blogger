defmodule Blogger.HomePageTest do
  use Blogger.ConnCase

  use Hound.Helpers

  hound_session

  test "Home Page" do
    navigate_to "/"
    assert page_source =~ "Blogger!"
  end

  test "Home with Posts" do
    %Blogger.Post{title: "My First Post!"}
    |> Blogger.Repo.insert

    navigate_to "/"
    assert page_source =~ "My First Post!"
  end
end
