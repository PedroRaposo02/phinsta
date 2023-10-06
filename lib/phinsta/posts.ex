defmodule Phinsta.Posts do
  alias Phinsta.Repo
  alias Phinsta.Posts.Post

  import Ecto.Query, warn: false

  def save(post_params) do
    %Post{}
    |> Post.changeset(post_params)
    |> Repo.insert()
  end

  def list_posts() do
    query =
      from p in Post,
        select: p,
        preload: [:user],
        order_by: [desc: p.inserted_at]

    Repo.all(query)
  end

end
