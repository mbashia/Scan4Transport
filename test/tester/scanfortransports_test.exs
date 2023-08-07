defmodule Tester.ScanfortransportsTest do
  use Tester.DataCase

  alias Tester.Scanfortransports

  describe "scanfortransports" do
    alias Tester.Scanfortransports.Scanfortransport

    import Tester.ScanfortransportsFixtures

    @invalid_attrs %{
      return_to_contact: nil,
      ship_to_address2: nil,
      return_to_address: nil,
      ship_to_region: nil,
      authority_to_leave: nil,
      longitude: nil,
      ship_to_geocode: nil,
      service_code_desc: nil,
      release_data: nil,
      dangerous_goods_flag: nil,
      grai: nil,
      ship_to_surburb: nil,
      ship_to_country_code: nil,
      signature_flag: nil,
      ship_to_address1: nil,
      ship_to_contact: nil,
      ship_to_postal_code: nil,
      gnic: nil,
      gsin: nil,
      return_to_company: nil,
      uri: nil,
      to_gln: nil,
      for_gln: nil,
      ship_to_company: nil,
      latitude: nil,
      ship_to_address: nil,
      routing_code: nil,
      sscc: nil,
      ship_to_phone_number: nil,
      symbol: nil,
      before_delivery_date: nil,
      not_after_delivery_date: nil,
      ship_to_locality: nil
    }

    test "list_scanfortransports/0 returns all scanfortransports" do
      scanfortransport = scanfortransport_fixture()
      assert Scanfortransports.list_scanfortransports() == [scanfortransport]
    end

    test "get_scanfortransport!/1 returns the scanfortransport with given id" do
      scanfortransport = scanfortransport_fixture()
      assert Scanfortransports.get_scanfortransport!(scanfortransport.id) == scanfortransport
    end

    test "create_scanfortransport/1 with valid data creates a scanfortransport" do
      valid_attrs = %{
        return_to_contact: "some return_to_contact",
        ship_to_address2: "some ship_to_address2",
        return_to_address: "some return_to_address",
        ship_to_region: "some ship_to_region",
        authority_to_leave: "some authority_to_leave",
        longitude: 120.5,
        ship_to_geocode: 42,
        service_code_desc: "some service_code_desc",
        release_data: "some release_data",
        dangerous_goods_flag: "some dangerous_goods_flag",
        grai: 42,
        ship_to_surburb: "some ship_to_surburb",
        ship_to_country_code: "some ship_to_country_code",
        signature_flag: "some signature_flag",
        ship_to_address1: "some ship_to_address1",
        ship_to_contact: "some ship_to_contact",
        ship_to_postal_code: 42,
        gnic: 42,
        gsin: 42,
        return_to_company: "some return_to_company",
        uri: "some uri",
        to_gln: 42,
        for_gln: 42,
        ship_to_company: "some ship_to_company",
        latitude: 120.5,
        ship_to_address: "some ship_to_address",
        routing_code: 42,
        sscc: 42,
        ship_to_phone_number: 42,
        symbol: "some symbol",
        before_delivery_date: ~D[2023-08-05],
        not_after_delivery_date: ~D[2023-08-05],
        ship_to_locality: "some ship_to_locality"
      }

      assert {:ok, %Scanfortransport{} = scanfortransport} =
               Scanfortransports.create_scanfortransport(valid_attrs)

      assert scanfortransport.ship_to_locality == "some ship_to_locality"
      assert scanfortransport.not_after_delivery_date == ~D[2023-08-05]
      assert scanfortransport.before_delivery_date == ~D[2023-08-05]
      assert scanfortransport.symbol == "some symbol"
      assert scanfortransport.ship_to_phone_number == 42
      assert scanfortransport.sscc == 42
      assert scanfortransport.routing_code == 42
      assert scanfortransport.ship_to_address == "some ship_to_address"
      assert scanfortransport.latitude == 120.5
      assert scanfortransport.ship_to_company == "some ship_to_company"
      assert scanfortransport.for_gln == 42
      assert scanfortransport.to_gln == 42
      assert scanfortransport.uri == "some uri"
      assert scanfortransport.return_to_company == "some return_to_company"
      assert scanfortransport.gsin == 42
      assert scanfortransport.gnic == 42
      assert scanfortransport.ship_to_postal_code == 42
      assert scanfortransport.ship_to_contact == "some ship_to_contact"
      assert scanfortransport.ship_to_address1 == "some ship_to_address1"
      assert scanfortransport.signature_flag == "some signature_flag"
      assert scanfortransport.ship_to_country_code == "some ship_to_country_code"
      assert scanfortransport.ship_to_surburb == "some ship_to_surburb"
      assert scanfortransport.grai == 42
      assert scanfortransport.dangerous_goods_flag == "some dangerous_goods_flag"
      assert scanfortransport.release_data == "some release_data"
      assert scanfortransport.service_code_desc == "some service_code_desc"
      assert scanfortransport.ship_to_geocode == 42
      assert scanfortransport.longitude == 120.5
      assert scanfortransport.authority_to_leave == "some authority_to_leave"
      assert scanfortransport.ship_to_region == "some ship_to_region"
      assert scanfortransport.return_to_address == "some return_to_address"
      assert scanfortransport.ship_to_address2 == "some ship_to_address2"
      assert scanfortransport.return_to_contact == "some return_to_contact"
    end

    test "create_scanfortransport/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} =
               Scanfortransports.create_scanfortransport(@invalid_attrs)
    end

    test "update_scanfortransport/2 with valid data updates the scanfortransport" do
      scanfortransport = scanfortransport_fixture()

      update_attrs = %{
        return_to_contact: "some updated return_to_contact",
        ship_to_address2: "some updated ship_to_address2",
        return_to_address: "some updated return_to_address",
        ship_to_region: "some updated ship_to_region",
        authority_to_leave: "some updated authority_to_leave",
        longitude: 456.7,
        ship_to_geocode: 43,
        service_code_desc: "some updated service_code_desc",
        release_data: "some updated release_data",
        dangerous_goods_flag: "some updated dangerous_goods_flag",
        grai: 43,
        ship_to_surburb: "some updated ship_to_surburb",
        ship_to_country_code: "some updated ship_to_country_code",
        signature_flag: "some updated signature_flag",
        ship_to_address1: "some updated ship_to_address1",
        ship_to_contact: "some updated ship_to_contact",
        ship_to_postal_code: 43,
        gnic: 43,
        gsin: 43,
        return_to_company: "some updated return_to_company",
        uri: "some updated uri",
        to_gln: 43,
        for_gln: 43,
        ship_to_company: "some updated ship_to_company",
        latitude: 456.7,
        ship_to_address: "some updated ship_to_address",
        routing_code: 43,
        sscc: 43,
        ship_to_phone_number: 43,
        symbol: "some updated symbol",
        before_delivery_date: ~D[2023-08-06],
        not_after_delivery_date: ~D[2023-08-06],
        ship_to_locality: "some updated ship_to_locality"
      }

      assert {:ok, %Scanfortransport{} = scanfortransport} =
               Scanfortransports.update_scanfortransport(scanfortransport, update_attrs)

      assert scanfortransport.ship_to_locality == "some updated ship_to_locality"
      assert scanfortransport.not_after_delivery_date == ~D[2023-08-06]
      assert scanfortransport.before_delivery_date == ~D[2023-08-06]
      assert scanfortransport.symbol == "some updated symbol"
      assert scanfortransport.ship_to_phone_number == 43
      assert scanfortransport.sscc == 43
      assert scanfortransport.routing_code == 43
      assert scanfortransport.ship_to_address == "some updated ship_to_address"
      assert scanfortransport.latitude == 456.7
      assert scanfortransport.ship_to_company == "some updated ship_to_company"
      assert scanfortransport.for_gln == 43
      assert scanfortransport.to_gln == 43
      assert scanfortransport.uri == "some updated uri"
      assert scanfortransport.return_to_company == "some updated return_to_company"
      assert scanfortransport.gsin == 43
      assert scanfortransport.gnic == 43
      assert scanfortransport.ship_to_postal_code == 43
      assert scanfortransport.ship_to_contact == "some updated ship_to_contact"
      assert scanfortransport.ship_to_address1 == "some updated ship_to_address1"
      assert scanfortransport.signature_flag == "some updated signature_flag"
      assert scanfortransport.ship_to_country_code == "some updated ship_to_country_code"
      assert scanfortransport.ship_to_surburb == "some updated ship_to_surburb"
      assert scanfortransport.grai == 43
      assert scanfortransport.dangerous_goods_flag == "some updated dangerous_goods_flag"
      assert scanfortransport.release_data == "some updated release_data"
      assert scanfortransport.service_code_desc == "some updated service_code_desc"
      assert scanfortransport.ship_to_geocode == 43
      assert scanfortransport.longitude == 456.7
      assert scanfortransport.authority_to_leave == "some updated authority_to_leave"
      assert scanfortransport.ship_to_region == "some updated ship_to_region"
      assert scanfortransport.return_to_address == "some updated return_to_address"
      assert scanfortransport.ship_to_address2 == "some updated ship_to_address2"
      assert scanfortransport.return_to_contact == "some updated return_to_contact"
    end

    test "update_scanfortransport/2 with invalid data returns error changeset" do
      scanfortransport = scanfortransport_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Scanfortransports.update_scanfortransport(scanfortransport, @invalid_attrs)

      assert scanfortransport == Scanfortransports.get_scanfortransport!(scanfortransport.id)
    end

    test "delete_scanfortransport/1 deletes the scanfortransport" do
      scanfortransport = scanfortransport_fixture()

      assert {:ok, %Scanfortransport{}} =
               Scanfortransports.delete_scanfortransport(scanfortransport)

      assert_raise Ecto.NoResultsError, fn ->
        Scanfortransports.get_scanfortransport!(scanfortransport.id)
      end
    end

    test "change_scanfortransport/1 returns a scanfortransport changeset" do
      scanfortransport = scanfortransport_fixture()
      assert %Ecto.Changeset{} = Scanfortransports.change_scanfortransport(scanfortransport)
    end
  end
end
