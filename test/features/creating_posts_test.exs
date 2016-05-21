defmodule Blogger.CreatingPostsTest do
  use Blogger.ConnCase

  use Hound.Helpers

  hound_session

  test "Create Post" do
    navigate_to "/posts/new"

    assert page_source =~ "Blogger!"
  end
end

