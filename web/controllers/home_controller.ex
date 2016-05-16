defmodule Blogger.HomeController do
  use Blogger.Web, :controller

  alias Blogger.Repo
  alias Blogger.Post

  def index(conn, _params) do
    posts = Repo.all(Post)
    render(conn, "index.html", posts: posts)
  end
end
