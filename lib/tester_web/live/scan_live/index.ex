defmodule TesterWeb.ScanLive.Index do
  use TesterWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:changeset, %{"sscc" => "", "gnic" => "", "symbol" => ""})
     |> assign(:url, "http://example.com/")
     |> assign(:sscc, "")
     |> assign(:gnic, "")
     |> assign(:symbol, "")
     |> assign(:gsin, "")
     |> assign(:grai, "")
     |> assign(:routing_code, "")
     |> assign(:to_gln, "")
     |> assign(:for_gln, "")
     |> assign(:service_code_desc, "")
     |> assign(:dangerous_goods_flag, "")
     |> assign(:ship_to_company, "")
     |> assign(:ship_to_contact, "")
     |> assign(:ship_to_address1, "")
     |> assign(:ship_to_address2, "")
     |> assign(:ship_to_suburb, "")
     |> assign(:ship_to_locality, "")
     |> assign(:ship_to_region, "")
     |> assign(:ship_to_country_code, "")
     |> assign(:ship_to_postal_code, "")
     |> assign(:ship_to_phone_number, "")
     |> assign(:ship_to_geocode, "")

    }
  end

  def handle_event("validate", params, socket) do
    IO.inspect(params)

    {:noreply,
     socket
     |> assign(:sscc, params["sscc"])
     |> assign(:gnic, params["gnic"])
     |> assign(:symbol, params["symbol"])
     |> assign(:gsin, params["gsin"])
     |> assign(:grai, params["grai"])
     |> assign(:routing_code, params["routing_code"])
     |> assign(:to_gln, params["to_gln"])
     |> assign(:for_gln, params["for_gln"])
     |> assign(:service_code_desc, params["service_code_desc"])
     |> assign(:dangerous_goods_flag, params["dangerous_goods_flag"])
     |> assign(:ship_to_company, params["ship_to_company"])
     |> assign(:ship_to_contact, params["ship_to_contact"])
     |> assign(:ship_to_address1, params["ship_to_address1"])
     |> assign(:ship_to_address2, params["ship_to_address2"])
     |> assign(:ship_to_suburb, params["ship_to_suburb"])
     |> assign(:ship_to_locality, params["ship_to_locality"])
     |> assign(:ship_to_region, params["ship_to_region"])
     |> assign(:ship_to_country_code, params["ship_to_country_code"])
     |> assign(:ship_to_postal_code, params["ship_to_postal_code"])
     |> assign(:ship_to_phone_number, params["ship_to_phone_number"])
     |> assign(:ship_to_geocode, params["ship_to_geocode"])

    }
  end

  def handle_event("save", _, socket) do
    {:noreply, socket}
  end
end
