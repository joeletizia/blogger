defmodule Blogger.HomePageTest do
  use Blogger.ConnCase

  use Hound.Helpers

  hound_session

  test "Home Page" do
    navigate_to "/"
    assert page_source =~ "Blogger!"
  end
end
