defmodule Blogger.PostController do
  use Blogger.Web, :controller

  alias Blogger.Repo
  alias Blogger.Post

  def new(conn, _params) do
    changeset = Post.changeset(%Post{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"post" => post_params}) do
    changeset = Post.changeset(%Post{},post_params)
    Repo.insert(changeset)

    conn
    |> put_flash(:info, "Post added.")
    |> redirect(to: home_path(conn, :index))
  end

  def show(conn, %{"id" => id}) do
    post = Repo.get(Post, id)
    render(conn, "show.html", post: post)
  end
end

