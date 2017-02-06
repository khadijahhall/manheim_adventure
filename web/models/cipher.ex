defmodule Adventure.Cipher do
  use Adventure.Web, :model

  schema "cipher" do
    field :text, :string
    field :shift, :integer
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:text, :shift])
    |> validate_required([:text, :shift])
  end

end
