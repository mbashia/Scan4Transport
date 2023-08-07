defmodule TesterWeb.ScanfortransportLiveTest do
  use TesterWeb.ConnCase

  import Phoenix.LiveViewTest
  import Tester.ScanfortransportsFixtures

  @create_attrs %{return_to_contact: "some return_to_contact", ship_to_address2: "some ship_to_address2", return_to_address: "some return_to_address", ship_to_region: "some ship_to_region", authority_to_leave: "some authority_to_leave", longitude: 120.5, ship_to_geocode: 42, service_code_desc: "some service_code_desc", release_data: "some release_data", dangerous_goods_flag: "some dangerous_goods_flag", grai: 42, ship_to_surburb: "some ship_to_surburb", ship_to_country_code: "some ship_to_country_code", signature_flag: "some signature_flag", ship_to_address1: "some ship_to_address1", ship_to_contact: "some ship_to_contact", ship_to_postal_code: 42, gnic: 42, gsin: 42, return_to_company: "some return_to_company", uri: "some uri", to_gln: 42, for_gln: 42, ship_to_company: "some ship_to_company", latitude: 120.5, ship_to_address: "some ship_to_address", routing_code: 42, sscc: 42, ship_to_phone_number: 42, symbol: "some symbol", before_delivery_date: %{day: 5, month: 8, year: 2023}, not_after_delivery_date: %{day: 5, month: 8, year: 2023}, ship_to_locality: "some ship_to_locality"}
  @update_attrs %{return_to_contact: "some updated return_to_contact", ship_to_address2: "some updated ship_to_address2", return_to_address: "some updated return_to_address", ship_to_region: "some updated ship_to_region", authority_to_leave: "some updated authority_to_leave", longitude: 456.7, ship_to_geocode: 43, service_code_desc: "some updated service_code_desc", release_data: "some updated release_data", dangerous_goods_flag: "some updated dangerous_goods_flag", grai: 43, ship_to_surburb: "some updated ship_to_surburb", ship_to_country_code: "some updated ship_to_country_code", signature_flag: "some updated signature_flag", ship_to_address1: "some updated ship_to_address1", ship_to_contact: "some updated ship_to_contact", ship_to_postal_code: 43, gnic: 43, gsin: 43, return_to_company: "some updated return_to_company", uri: "some updated uri", to_gln: 43, for_gln: 43, ship_to_company: "some updated ship_to_company", latitude: 456.7, ship_to_address: "some updated ship_to_address", routing_code: 43, sscc: 43, ship_to_phone_number: 43, symbol: "some updated symbol", before_delivery_date: %{day: 6, month: 8, year: 2023}, not_after_delivery_date: %{day: 6, month: 8, year: 2023}, ship_to_locality: "some updated ship_to_locality"}
  @invalid_attrs %{return_to_contact: nil, ship_to_address2: nil, return_to_address: nil, ship_to_region: nil, authority_to_leave: nil, longitude: nil, ship_to_geocode: nil, service_code_desc: nil, release_data: nil, dangerous_goods_flag: nil, grai: nil, ship_to_surburb: nil, ship_to_country_code: nil, signature_flag: nil, ship_to_address1: nil, ship_to_contact: nil, ship_to_postal_code: nil, gnic: nil, gsin: nil, return_to_company: nil, uri: nil, to_gln: nil, for_gln: nil, ship_to_company: nil, latitude: nil, ship_to_address: nil, routing_code: nil, sscc: nil, ship_to_phone_number: nil, symbol: nil, before_delivery_date: %{day: 30, month: 2, year: 2023}, not_after_delivery_date: %{day: 30, month: 2, year: 2023}, ship_to_locality: nil}

  defp create_scanfortransport(_) do
    scanfortransport = scanfortransport_fixture()
    %{scanfortransport: scanfortransport}
  end

  describe "Index" do
    setup [:create_scanfortransport]

    test "lists all scanfortransports", %{conn: conn, scanfortransport: scanfortransport} do
      {:ok, _index_live, html} = live(conn, Routes.scanfortransport_index_path(conn, :index))

      assert html =~ "Listing Scanfortransports"
      assert html =~ scanfortransport.return_to_contact
    end

    test "saves new scanfortransport", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.scanfortransport_index_path(conn, :index))

      assert index_live |> element("a", "New Scanfortransport") |> render_click() =~
               "New Scanfortransport"

      assert_patch(index_live, Routes.scanfortransport_index_path(conn, :new))

      assert index_live
             |> form("#scanfortransport-form", scanfortransport: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        index_live
        |> form("#scanfortransport-form", scanfortransport: @create_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.scanfortransport_index_path(conn, :index))

      assert html =~ "Scanfortransport created successfully"
      assert html =~ "some return_to_contact"
    end

    test "updates scanfortransport in listing", %{conn: conn, scanfortransport: scanfortransport} do
      {:ok, index_live, _html} = live(conn, Routes.scanfortransport_index_path(conn, :index))

      assert index_live |> element("#scanfortransport-#{scanfortransport.id} a", "Edit") |> render_click() =~
               "Edit Scanfortransport"

      assert_patch(index_live, Routes.scanfortransport_index_path(conn, :edit, scanfortransport))

      assert index_live
             |> form("#scanfortransport-form", scanfortransport: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        index_live
        |> form("#scanfortransport-form", scanfortransport: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.scanfortransport_index_path(conn, :index))

      assert html =~ "Scanfortransport updated successfully"
      assert html =~ "some updated return_to_contact"
    end

    test "deletes scanfortransport in listing", %{conn: conn, scanfortransport: scanfortransport} do
      {:ok, index_live, _html} = live(conn, Routes.scanfortransport_index_path(conn, :index))

      assert index_live |> element("#scanfortransport-#{scanfortransport.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#scanfortransport-#{scanfortransport.id}")
    end
  end

  describe "Show" do
    setup [:create_scanfortransport]

    test "displays scanfortransport", %{conn: conn, scanfortransport: scanfortransport} do
      {:ok, _show_live, html} = live(conn, Routes.scanfortransport_show_path(conn, :show, scanfortransport))

      assert html =~ "Show Scanfortransport"
      assert html =~ scanfortransport.return_to_contact
    end

    test "updates scanfortransport within modal", %{conn: conn, scanfortransport: scanfortransport} do
      {:ok, show_live, _html} = live(conn, Routes.scanfortransport_show_path(conn, :show, scanfortransport))

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Scanfortransport"

      assert_patch(show_live, Routes.scanfortransport_show_path(conn, :edit, scanfortransport))

      assert show_live
             |> form("#scanfortransport-form", scanfortransport: @invalid_attrs)
             |> render_change() =~ "is invalid"

      {:ok, _, html} =
        show_live
        |> form("#scanfortransport-form", scanfortransport: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.scanfortransport_show_path(conn, :show, scanfortransport))

      assert html =~ "Scanfortransport updated successfully"
      assert html =~ "some updated return_to_contact"
    end
  end
end
