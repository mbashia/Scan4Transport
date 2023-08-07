defmodule Tester.Scan4transports.Scan4transport do
  use Ecto.Schema
  import Ecto.Changeset

  schema "scan4transports" do
    field(:ship_to_locality, :string)
    field(:not_after_delivery_date, :date)
    field(:before_delivery_date, :date)
    field(:symbol, :string)
    field(:ship_to_phone_number, :integer)
    field(:sscc, :integer)
    field(:routing_code, :integer)
    field(:ship_to_address, :string)
    field(:latitude, :float)
    field(:ship_to_company, :string)
    field(:for_gln, :integer)
    field(:to_gln, :integer)
    field(:uri_stem, :string)
    field(:return_to_company, :string)
    field(:gsin, :integer)
    field(:gnic, :integer)
    field(:ship_to_postal_code, :integer)
    field(:ship_to_contact, :string)
    field(:ship_to_address1, :string)
    field(:signature_flag, :string)
    field(:ship_to_country_code, :string)
    field(:ship_to_surburb, :string)
    field(:grai, :integer)
    field(:dangerous_goods_flag, :string)
    field(:release_date, :string)
    field(:service_code_desc, :string)
    field(:ship_to_geocode, :integer)
    field(:longitude, :float)
    field(:authority_to_leave, :string)
    field(:ship_to_region, :string)
    field(:return_address, :string)
    field(:ship_to_address2, :string)
    field(:return_to_contact, :string)
    ## corrections start here
    field(:return_to_address1, :string)
    field(:return_to_address2, :string)
    field(:return_to_surburb, :string)
    field(:return_to_locality, :string)
    field(:return_to_region, :string)
    field(:return_to_country_code, :string)
    field(:return_to_postal_code, :integer)
    field(:return_to_phone_number, :integer)
    field(:logistic_weight, :float)
    field(:length_first_dimension, :float)
    field(:width_second_dimension, :float)
    field(:depth_thickness_height, :float)
    field(:logistic_volume, :float)

    timestamps()
  end

  @doc false
  def changeset(scan4transport, attrs) do
    scan4transport
    |> cast(attrs, [
      :symbol,
      :sscc,
      :uri_stem,
      :gnic,
      :grai,
      :gsin,
      :routing_code,
      :to_gln,
      :for_gln,
      :service_code_desc,
      :dangerous_goods_flag,
      :ship_to_address,
      :ship_to_company,
      :ship_to_contact,
      :ship_to_address1,
      :ship_to_address2,
      :ship_to_surburb,
      :ship_to_locality,
      :ship_to_region,
      :ship_to_country_code,
      :ship_to_postal_code,
      :ship_to_phone_number,
      :ship_to_geocode,
      :latitude,
      :longitude,
      :authority_to_leave,
      :signature_flag,
      :before_delivery_date,
      :not_after_delivery_date,
      :release_date,
      :return_address,
      :return_to_company,
      :return_to_contact,
      :return_to_address1,
      :return_to_address2,
      :return_to_address2,
      :return_to_surburb,
      :return_to_locality,
      :return_to_region,
      :return_to_country_code,
      :return_to_postal_code,
      :return_to_phone_number,
      :logistic_weight,
      :length_first_dimension,
      :width_second_dimension,
      :depth_thickness_height,
      :logistic_volume
    ])
    |> validate_required([
      :symbol,
      :sscc,
      :uri_stem,
      :gnic,
      :grai,
      :gsin,
      :routing_code,
      :to_gln,
      :for_gln,
      :service_code_desc,
      :dangerous_goods_flag,
      :ship_to_address,
      :ship_to_company,
      :ship_to_contact,
      :ship_to_address1,
      :ship_to_address2,
      :ship_to_surburb,
      :ship_to_locality,
      :ship_to_region,
      :ship_to_country_code,
      :ship_to_postal_code,
      :ship_to_phone_number,
      :ship_to_geocode,
      :latitude,
      :longitude,
      :authority_to_leave,
      :signature_flag,
      :before_delivery_date,
      :not_after_delivery_date,
      :release_date,
      :return_address,
      :return_to_company,
      :return_to_contact,
      :return_to_address1,
      :return_to_address2,
      :return_to_address2,
      :return_to_surburb,
      :return_to_locality,
      :return_to_region,
      :return_to_country_code,
      :return_to_postal_code,
      :return_to_phone_number,
      :logistic_weight,
      :length_first_dimension,
      :width_second_dimension,
      :depth_thickness_height,
      :logistic_volume
    ])
  end
end
