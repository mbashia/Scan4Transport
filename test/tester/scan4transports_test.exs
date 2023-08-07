defmodule Tester.Scan4transportsTest do
  use Tester.DataCase

  alias Tester.Scan4transports

  describe "scan4transports" do
    alias Tester.Scan4transports.Scan4transport

    import Tester.Scan4transportsFixtures

    @invalid_attrs %{return_to_contact: nil, ship_to_address2: nil, return_to_address: nil, ship_to_region: nil, authority_to_leave: nil, longitude: nil, ship_to_geocode: nil, service_code_desc: nil, release_data: nil, dangerous_goods_flag: nil, grai: nil, ship_to_surburb: nil, ship_to_country_code: nil, signature_flag: nil, ship_to_address1: nil, ship_to_contact: nil, ship_to_postal_code: nil, gnic: nil, gsin: nil, return_to_company: nil, uri: nil, to_gln: nil, for_gln: nil, ship_to_company: nil, latitude: nil, ship_to_address: nil, routing_code: nil, sscc: nil, ship_to_phone_number: nil, symbol: nil, before_delivery_date: nil, not_after_delivery_date: nil, ship_to_locality: nil}

    test "list_scan4transports/0 returns all scan4transports" do
      scan4transport = scan4transport_fixture()
      assert Scan4transports.list_scan4transports() == [scan4transport]
    end

    test "get_scan4transport!/1 returns the scan4transport with given id" do
      scan4transport = scan4transport_fixture()
      assert Scan4transports.get_scan4transport!(scan4transport.id) == scan4transport
    end

    test "create_scan4transport/1 with valid data creates a scan4transport" do
      valid_attrs = %{return_to_contact: "some return_to_contact", ship_to_address2: "some ship_to_address2", return_to_address: "some return_to_address", ship_to_region: "some ship_to_region", authority_to_leave: "some authority_to_leave", longitude: 120.5, ship_to_geocode: 42, service_code_desc: "some service_code_desc", release_data: "some release_data", dangerous_goods_flag: "some dangerous_goods_flag", grai: 42, ship_to_surburb: "some ship_to_surburb", ship_to_country_code: "some ship_to_country_code", signature_flag: "some signature_flag", ship_to_address1: "some ship_to_address1", ship_to_contact: "some ship_to_contact", ship_to_postal_code: 42, gnic: 42, gsin: 42, return_to_company: "some return_to_company", uri: "some uri", to_gln: 42, for_gln: 42, ship_to_company: "some ship_to_company", latitude: 120.5, ship_to_address: "some ship_to_address", routing_code: 42, sscc: 42, ship_to_phone_number: 42, symbol: "some symbol", before_delivery_date: ~D[2023-08-05], not_after_delivery_date: ~D[2023-08-05], ship_to_locality: "some ship_to_locality"}

      assert {:ok, %Scan4transport{} = scan4transport} = Scan4transports.create_scan4transport(valid_attrs)
      assert scan4transport.ship_to_locality == "some ship_to_locality"
      assert scan4transport.not_after_delivery_date == ~D[2023-08-05]
      assert scan4transport.before_delivery_date == ~D[2023-08-05]
      assert scan4transport.symbol == "some symbol"
      assert scan4transport.ship_to_phone_number == 42
      assert scan4transport.sscc == 42
      assert scan4transport.routing_code == 42
      assert scan4transport.ship_to_address == "some ship_to_address"
      assert scan4transport.latitude == 120.5
      assert scan4transport.ship_to_company == "some ship_to_company"
      assert scan4transport.for_gln == 42
      assert scan4transport.to_gln == 42
      assert scan4transport.uri == "some uri"
      assert scan4transport.return_to_company == "some return_to_company"
      assert scan4transport.gsin == 42
      assert scan4transport.gnic == 42
      assert scan4transport.ship_to_postal_code == 42
      assert scan4transport.ship_to_contact == "some ship_to_contact"
      assert scan4transport.ship_to_address1 == "some ship_to_address1"
      assert scan4transport.signature_flag == "some signature_flag"
      assert scan4transport.ship_to_country_code == "some ship_to_country_code"
      assert scan4transport.ship_to_surburb == "some ship_to_surburb"
      assert scan4transport.grai == 42
      assert scan4transport.dangerous_goods_flag == "some dangerous_goods_flag"
      assert scan4transport.release_data == "some release_data"
      assert scan4transport.service_code_desc == "some service_code_desc"
      assert scan4transport.ship_to_geocode == 42
      assert scan4transport.longitude == 120.5
      assert scan4transport.authority_to_leave == "some authority_to_leave"
      assert scan4transport.ship_to_region == "some ship_to_region"
      assert scan4transport.return_to_address == "some return_to_address"
      assert scan4transport.ship_to_address2 == "some ship_to_address2"
      assert scan4transport.return_to_contact == "some return_to_contact"
    end

    test "create_scan4transport/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Scan4transports.create_scan4transport(@invalid_attrs)
    end

    test "update_scan4transport/2 with valid data updates the scan4transport" do
      scan4transport = scan4transport_fixture()
      update_attrs = %{return_to_contact: "some updated return_to_contact", ship_to_address2: "some updated ship_to_address2", return_to_address: "some updated return_to_address", ship_to_region: "some updated ship_to_region", authority_to_leave: "some updated authority_to_leave", longitude: 456.7, ship_to_geocode: 43, service_code_desc: "some updated service_code_desc", release_data: "some updated release_data", dangerous_goods_flag: "some updated dangerous_goods_flag", grai: 43, ship_to_surburb: "some updated ship_to_surburb", ship_to_country_code: "some updated ship_to_country_code", signature_flag: "some updated signature_flag", ship_to_address1: "some updated ship_to_address1", ship_to_contact: "some updated ship_to_contact", ship_to_postal_code: 43, gnic: 43, gsin: 43, return_to_company: "some updated return_to_company", uri: "some updated uri", to_gln: 43, for_gln: 43, ship_to_company: "some updated ship_to_company", latitude: 456.7, ship_to_address: "some updated ship_to_address", routing_code: 43, sscc: 43, ship_to_phone_number: 43, symbol: "some updated symbol", before_delivery_date: ~D[2023-08-06], not_after_delivery_date: ~D[2023-08-06], ship_to_locality: "some updated ship_to_locality"}

      assert {:ok, %Scan4transport{} = scan4transport} = Scan4transports.update_scan4transport(scan4transport, update_attrs)
      assert scan4transport.ship_to_locality == "some updated ship_to_locality"
      assert scan4transport.not_after_delivery_date == ~D[2023-08-06]
      assert scan4transport.before_delivery_date == ~D[2023-08-06]
      assert scan4transport.symbol == "some updated symbol"
      assert scan4transport.ship_to_phone_number == 43
      assert scan4transport.sscc == 43
      assert scan4transport.routing_code == 43
      assert scan4transport.ship_to_address == "some updated ship_to_address"
      assert scan4transport.latitude == 456.7
      assert scan4transport.ship_to_company == "some updated ship_to_company"
      assert scan4transport.for_gln == 43
      assert scan4transport.to_gln == 43
      assert scan4transport.uri == "some updated uri"
      assert scan4transport.return_to_company == "some updated return_to_company"
      assert scan4transport.gsin == 43
      assert scan4transport.gnic == 43
      assert scan4transport.ship_to_postal_code == 43
      assert scan4transport.ship_to_contact == "some updated ship_to_contact"
      assert scan4transport.ship_to_address1 == "some updated ship_to_address1"
      assert scan4transport.signature_flag == "some updated signature_flag"
      assert scan4transport.ship_to_country_code == "some updated ship_to_country_code"
      assert scan4transport.ship_to_surburb == "some updated ship_to_surburb"
      assert scan4transport.grai == 43
      assert scan4transport.dangerous_goods_flag == "some updated dangerous_goods_flag"
      assert scan4transport.release_data == "some updated release_data"
      assert scan4transport.service_code_desc == "some updated service_code_desc"
      assert scan4transport.ship_to_geocode == 43
      assert scan4transport.longitude == 456.7
      assert scan4transport.authority_to_leave == "some updated authority_to_leave"
      assert scan4transport.ship_to_region == "some updated ship_to_region"
      assert scan4transport.return_to_address == "some updated return_to_address"
      assert scan4transport.ship_to_address2 == "some updated ship_to_address2"
      assert scan4transport.return_to_contact == "some updated return_to_contact"
    end

    test "update_scan4transport/2 with invalid data returns error changeset" do
      scan4transport = scan4transport_fixture()
      assert {:error, %Ecto.Changeset{}} = Scan4transports.update_scan4transport(scan4transport, @invalid_attrs)
      assert scan4transport == Scan4transports.get_scan4transport!(scan4transport.id)
    end

    test "delete_scan4transport/1 deletes the scan4transport" do
      scan4transport = scan4transport_fixture()
      assert {:ok, %Scan4transport{}} = Scan4transports.delete_scan4transport(scan4transport)
      assert_raise Ecto.NoResultsError, fn -> Scan4transports.get_scan4transport!(scan4transport.id) end
    end

    test "change_scan4transport/1 returns a scan4transport changeset" do
      scan4transport = scan4transport_fixture()
      assert %Ecto.Changeset{} = Scan4transports.change_scan4transport(scan4transport)
    end
  end
end
