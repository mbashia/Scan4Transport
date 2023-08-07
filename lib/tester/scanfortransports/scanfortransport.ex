defmodule Tester.Scanfortransports.Scanfortransport do
  use Ecto.Schema
  import Ecto.Changeset

  schema "scanfortransports" do
    field :ship_to_locality, :string
    field :not_after_delivery_date, :date
    field :before_delivery_date, :date
    field :symbol, :string
    field :ship_to_phone_number, :integer
    field :sscc, :integer
    field :routing_code, :integer
    field :ship_to_address, :string
    field :latitude, :float
    field :ship_to_company, :string
    field :for_gln, :integer
    field :to_gln, :integer
    field :uri, :string
    field :return_to_company, :string
    field :gsin, :integer
    field :gnic, :integer
    field :ship_to_postal_code, :integer
    field :ship_to_contact, :string
    field :ship_to_address1, :string
    field :signature_flag, :string
    field :ship_to_country_code, :string
    field :ship_to_surburb, :string
    field :grai, :integer
    field :dangerous_goods_flag, :string
    field :release_data, :string
    field :service_code_desc, :string
    field :ship_to_geocode, :integer
    field :longitude, :float
    field :authority_to_leave, :string
    field :ship_to_region, :string
    field :return_to_address, :string
    field :ship_to_address2, :string
    field :return_to_contact, :string

    timestamps()
  end

  @doc false
  def changeset(scanfortransport, attrs) do
    scanfortransport
    |> cast(attrs, [:symbol, :sscc, :uri, :gnic, :grai, :gsin, :routing_code, :to_gln, :for_gln, :service_code_desc, :dangerous_goods_flag, :ship_to_address, :ship_to_company, :ship_to_contact, :ship_to_address1, :ship_to_address2, :ship_to_surburb, :ship_to_locality, :ship_to_region, :ship_to_country_code, :ship_to_postal_code, :ship_to_phone_number, :ship_to_geocode, :latitude, :longitude, :authority_to_leave, :signature_flag, :before_delivery_date, :not_after_delivery_date, :release_data, :return_to_address, :return_to_company, :return_to_contact])
    |> validate_required([:symbol, :sscc, :uri, :gnic, :grai, :gsin, :routing_code, :to_gln, :for_gln, :service_code_desc, :dangerous_goods_flag, :ship_to_address, :ship_to_company, :ship_to_contact, :ship_to_address1, :ship_to_address2, :ship_to_surburb, :ship_to_locality, :ship_to_region, :ship_to_country_code, :ship_to_postal_code, :ship_to_phone_number, :ship_to_geocode, :latitude, :longitude, :authority_to_leave, :signature_flag, :before_delivery_date, :not_after_delivery_date, :release_data, :return_to_address, :return_to_company, :return_to_contact])
  end
end
