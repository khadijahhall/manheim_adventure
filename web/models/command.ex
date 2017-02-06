defmodule Adventure.Command do
  use Adventure.Web, :model

  schema "command" do
    field :text, :string

  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text])
    |> validate_required([:text])
  end

end
