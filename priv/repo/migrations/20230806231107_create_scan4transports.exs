defmodule Tester.Repo.Migrations.CreateScan4transports do
  use Ecto.Migration

  def change do
    create table(:scan4transports) do
      add :symbol, :string
      add :sscc, :integer
      add :uri_stem, :string
      add :gnic, :integer
      add :grai, :integer
      add :gsin, :integer
      add :routing_code, :integer
      add :to_gln, :integer
      add :for_gln, :integer
      add :service_code_desc, :string
      add :dangerous_goods_flag, :string
      add :ship_to_address, :string
      add :ship_to_company, :string
      add :ship_to_contact, :string
      add :ship_to_address1, :string
      add :ship_to_address2, :string
      add :ship_to_surburb, :string
      add :ship_to_locality, :string
      add :ship_to_region, :string
      add :ship_to_country_code, :string
      add :ship_to_postal_code, :integer
      add :ship_to_phone_number, :integer
      add :ship_to_geocode, :integer
      add :latitude, :float
      add :longitude, :float
      add :authority_to_leave, :string
      add :signature_flag, :string
      add :before_delivery_date, :date
      add :not_after_delivery_date, :date
      add :release_date, :string
      add :return_address, :string
      add :return_to_company, :string
      add :return_to_contact, :string

      ##corrections start here
      add :return_to_address1, :string
      add :return_to_address2, :string
      add :return_to_surburb, :string
      add :return_to_locality, :string
      add :return_to_region, :string
      add :return_to_country_code, :string
      add :return_to_postal_code, :integer
      add :return_to_phone_number, :integer
      add :logistic_weight, :float
      add :length_first_dimension, :float
      add :width_second_dimension, :float
      add :depth_thickness_height, :float
      add :logistic_volume, :float

      timestamps()
    end
  end
end
