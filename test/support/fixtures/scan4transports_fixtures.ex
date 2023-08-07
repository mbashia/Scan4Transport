defmodule Tester.Scan4transportsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tester.Scan4transports` context.
  """

  @doc """
  Generate a scan4transport.
  """
  def scan4transport_fixture(attrs \\ %{}) do
    {:ok, scan4transport} =
      attrs
      |> Enum.into(%{
        ship_to_locality: "some ship_to_locality",
        not_after_delivery_date: ~D[2023-08-05],
        before_delivery_date: ~D[2023-08-05],
        symbol: "some symbol",
        ship_to_phone_number: 42,
        sscc: 42,
        routing_code: 42,
        ship_to_address: "some ship_to_address",
        latitude: 120.5,
        ship_to_company: "some ship_to_company",
        for_gln: 42,
        to_gln: 42,
        uri: "some uri",
        return_to_company: "some return_to_company",
        gsin: 42,
        gnic: 42,
        ship_to_postal_code: 42,
        ship_to_contact: "some ship_to_contact",
        ship_to_address1: "some ship_to_address1",
        signature_flag: "some signature_flag",
        ship_to_country_code: "some ship_to_country_code",
        ship_to_surburb: "some ship_to_surburb",
        grai: 42,
        dangerous_goods_flag: "some dangerous_goods_flag",
        release_data: "some release_data",
        service_code_desc: "some service_code_desc",
        ship_to_geocode: 42,
        longitude: 120.5,
        authority_to_leave: "some authority_to_leave",
        ship_to_region: "some ship_to_region",
        return_to_address: "some return_to_address",
        ship_to_address2: "some ship_to_address2",
        return_to_contact: "some return_to_contact"
      })
      |> Tester.Scan4transports.create_scan4transport()

    scan4transport
  end
end
