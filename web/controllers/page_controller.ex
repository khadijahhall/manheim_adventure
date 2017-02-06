defmodule Adventure.PageController do
  use Adventure.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def clues(conn, _params) do
    changeset = .changeset(%Caesar{}, %{})

    render conn, "clues.html", changeset: changeset
  end
end
