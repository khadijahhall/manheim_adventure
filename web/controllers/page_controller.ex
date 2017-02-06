defmodule Adventure.PageController do
  use Adventure.Web, :controller
  alias Adventure.Command
  alias Adventure.Cipher

  def index(conn, _params) do
    render conn, "index.html"
  end

  def clues(conn, _params) do
    changeset = Command.changeset(%Command{}, %{})

    clue = ""
    render conn, "clues.html", changeset: changeset, clue: clue
  end

  def continue(conn, _params) do
    clue = ""
    render conn, "continue.html", clue: clue
  end

  def give_answer(conn, %{"command" => command}) do
    changeset = Command.changeset(%Command{}, %{})

    IO.inspect command
    %{"text" => text} = command
    clue = Adventure.Clue.clue(text)

    case clue do
      "Hurray!! You made it!" ->
        render conn, "continue.html", clue: clue
      _ ->
        render conn, "clues.html", changeset: changeset, clue: clue
    end

  end

  def cipher(conn, _params) do
    changeset = Cipher.changeset(%Cipher{}, %{})

    render conn, "cipher.html", changeset: changeset, error: ""
  end

  def encrypt(conn, %{"cipher" => cipher}) do
    %{"text" => text, "shift" => shift} = cipher
    changeset = Cipher.changeset(%Cipher{}, cipher)

    if changeset.valid? do
      {shift, _} = Integer.parse(shift)
      encryption = Adventure.Encrypt.encrypt(text, shift)
      render conn, "finish.html", encryption: encryption, original: text
    else
      render conn, "cipher.html", changeset: changeset, error: "Something went wrong. Make sure you are shifting by a number."
    end
  end
end
