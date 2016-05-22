defmodule Blogger.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :text
      add :text, :text

      timestamps
    end

  end
end
