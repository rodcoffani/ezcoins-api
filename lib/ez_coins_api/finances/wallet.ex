defmodule EzCoinsApi.Finances.Wallet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wallets" do
    field :balance, :integer, default: 0
    field :received, :integer, default: 0
    field :to_offer, :integer, default: 0
    field :owner_user_id, :id

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:balance, :received, :to_offer, :owner_user_id])
    |> validate_required([:owner_user_id])
  end
end
