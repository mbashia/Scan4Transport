defmodule TesterWeb.ScanLive.Index do
  use TesterWeb, :live_view
  alias Tester.Scan4transports
  alias Tester.Scan4transports.Scan4transport

  def mount(params, _session, socket) do
    {:ok,
     socket
     |> assign(:changeset, Scan4transport.changeset(%Scan4transport{}, %{}))
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
     |> assign(:ship_to_address, "")
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
     |> assign(:authority_to_leave, "")
     |> assign(:signature_flag, "")
     |> assign(:before_delivery_date, "")
     |> assign(:not_after_delivery_date, "")
     |> assign(:release_date, "")
     |> assign(:return_to_address, "")
     |> assign(:latitude, "")
     |> assign(:longitude, "")
     |> assign(:return_to_company, "")
     |> assign(:return_to_contact, "")
     |> assign(:return_to_address1, "")
     |> assign(:return_to_address2, "")
     |> assign(:return_to_surburb, "")
     |> assign(:return_to_locality, "")
     |> assign(:return_to_region, "")
     |> assign(:return_to_country_code, "")
     |> assign(:return_to_postal_code, "")
     |> assign(:return_to_phone_number, "")
     |> assign(:logistic_weight, "")
     |> assign(:length_first_dimension, "")
     |> assign(:width_second_dimension, "")
     |> assign(:depth_thickness_height, "")
     |> assign(:logistic_volume, "")}
  end

  def handle_event("validate", params, socket) do
    IO.inspect(params)


    {:noreply,
     socket
     |> assign(:sscc, params["scan4transport"]["sscc"] )
     |> assign(:gnic, params["scan4transport"]["gnic"])
    #  |> assign(:symbol, params["scan4transport"]["symbol"])
     |> assign(:gsin, params["scan4transport"]["gsin"])
     |> assign(:grai, params["scan4transport"]["grai"])
     |> assign(:routing_code, params["scan4transport"]["routing_code"])
     |> assign(:to_gln, params["scan4transport"]["to_gln"])
     |> assign(:for_gln, params["scan4transport"]["for_gln"])
     |> assign(:service_code_desc, params["scan4transport"]["service_code_desc"])
     |> assign(:dangerous_goods_flag, params["scan4transport"]["dangerous_goods_flag"])
     |> assign(:ship_to_company, params["scan4transport"]["ship_to_company"])
     |> assign(:ship_to_contact, params["scan4transport"]["ship_to_contact"])
     |> assign(:ship_to_address1, params["scan4transport"]["ship_to_address1"])
     |> assign(:ship_to_address2, params["scan4transport"]["ship_to_address2"])
     |> assign(:ship_to_suburb, params["scan4transport"]["ship_to_suburb"])
     |> assign(:ship_to_locality, params["scan4transport"]["ship_to_locality"])
     |> assign(:ship_to_region, params["scan4transport"]["ship_to_region"])
     |> assign(:ship_to_country_code, params["scan4transport"]["ship_to_country_code"])
     |> assign(:ship_to_postal_code, params["scan4transport"]["ship_to_postal_code"])
     |> assign(:ship_to_phone_number, params["scan4transport"]["ship_to_phone_number"])
     |> assign(:ship_to_geocode, params["scan4transport"]["ship_to_geocode"])
     |> assign(:authority_to_leave, params["scan4transport"]["authority_to_leave"])
     |> assign(:signature_flag, params["scan4transport"]["signature_flag"])
     |> assign(:before_delivery_date, params["scan4transport"]["before_delivery_date"])
     |> assign(:not_after_delivery_date, params["scan4transport"]["not_after_delivery_date"])
     |> assign(:release_date, params["scan4transport"]["release_date"])
     |> assign(:return_to_company, params["scan4transport"]["return_to_company"])
     |> assign(:return_to_contact, params["scan4transport"]["return_to_contact"])
     |> assign(:return_to_address1, params["scan4transport"]["return_to_address1"])
     |> assign(:return_to_address2, params["scan4transport"]["return_to_address2"])
     |> assign(:return_to_surburb, params["scan4transport"]["return_to_surburb"])
     |> assign(:return_to_locality, params["scan4transport"]["return_to_locality"])
     |> assign(:return_to_region, params["scan4transport"]["return_to_region"])
     |> assign(:return_to_country_code, params["scan4transport"]["return_to_country_code"])
     |> assign(:return_to_postal_code, params["scan4transport"]["return_to_postal_code"])
     |> assign(:return_to_phone_number, params["scan4transport"]["return_to_phone_number"])
     |> assign(:logistic_weight, params["scan4transport"]["logistic_weight"])
     |> assign(:length_first_dimension, params["scan4transport"]["length_first_dimension"])
     |> assign(:width_second_dimension, params["scan4transport"]["width_second_dimension"])
     |> assign(:depth_thickness_height, params["scan4transport"]["depth_thickness_height"])
     |> assign(:logistic_volume, params["scan4transport"]["logistic_volume"])
     |> assign(:latitude, params["scan4transport"]["latitude"])
     |> assign(:longitude, params["scan4transport"]["longitude"])}
  end

  def handle_event("save", _, socket) do
    {:noreply, socket}
  end
end

# sscc = params["scan4transport"]["sscc"]
# gnic = params["scan4transport"]["gnic"]
# symbol = params["scan4transport"]["symbol"]
# gsin = params["scan4transport"]["gsin"]
# grai = params["scan4transport"]["grai"]
# routing_code = params["scan4transport"]["routing_code"]
# to_gln = params["scan4transport"]["to_gln"]
# for_gln = params["scan4transport"]["for_gln"]
# service_code_desc = params["scan4transport"]["service_code_desc"]
# dangerous_goods_flag = params["scan4transport"]["dangerous_goods_flag"]
# ship_to_company = params["scan4transport"]["ship_to_company"]
# ship_to_contact = params["scan4transport"]["ship_to_contact"]
# ship_to_address1 = params["scan4transport"]["ship_to_address1"]
# ship_to_address2 = params["scan4transport"]["ship_to_address2"]
# ship_to_suburb = params["scan4transport"]["ship_to_suburb"]
# ship_to_locality = params["scan4transport"]["ship_to_locality"]
# ship_to_region = params["scan4transport"]["ship_to_region"]
# ship_to_country_code = params["scan4transport"]["ship_to_country_code"]
# ship_to_postal_code = params["scan4transport"]["ship_to_postal_code"]
# ship_to_phone_number = params["scan4transport"]["ship_to_phone_number"]
# ship_to_geocode = params["scan4transport"]["ship_to_geocode"]
# authority_to_leave = params["scan4transport"]["authority_to_leave"]
# signature_flag = params["scan4transport"]["signature_flag"]
# before_delivery_date = params["scan4transport"]["before_delivery_date"]
# not_after_delivery_date = params["scan4transport"]["not_after_delivery_date"]
# release_date = params["scan4transport"]["release_date"]
# return_to_company = params["scan4transport"]["return_to_company"]
# return_to_contact = params["scan4transport"]["return_to_contact"]
# return_to_address1 = params["scan4transport"]["return_to_address1"]
# return_to_address2 = params["scan4transport"]["return_to_address2"]
# return_to_surburb = params["scan4transport"]["return_to_surburb"]
# return_to_locality = params["scan4transport"]["return_to_locality"]
# return_to_region = params["scan4transport"]["return_to_region"]
# return_to_country_code = params["scan4transport"]["return_to_country_code"]
# return_to_postal_code = params["scan4transport"]["return_to_postal_code"]
# return_to_phone_number = params["scan4transport"]["return_to_phone_number"]
# logistic_weight = params["scan4transport"]["logistic_weight"]
# length_first_dimension = params["scan4transport"]["length_first_dimension"]
# width_second_dimension = params["scan4transport"]["width_second_dimension"]
# depth_thickness_height = params["scan4transport"]["depth_thickness_height"]
# logistic_volume = params["scan4transport"]["logistic_volume"]
# latitude = params["scan4transport"]["latitude"]
# longitude = params["scan4transport"]["longitude"]

# url =Enum.join(
#   for {var, id} <- [
#     {sscc, "00"}, {gnic, "00"}, {gsin, "00"}, {grai, "00"},
#     {routing_code, "00"}, {to_gln, "00"}, {for_gln, "00"},
#     {service_code_desc, "00"}, {dangerous_goods_flag, "00"},
#     {ship_to_company, "00"}, {ship_to_contact, "00"},
#     {ship_to_address1, "00"}, {ship_to_address2, "00"},
#     {ship_to_suburb, "00"}, {ship_to_locality, "00"},
#     {ship_to_region, "00"}, {ship_to_country_code, "00"},
#     {ship_to_postal_code, "00"}, {ship_to_phone_number, "00"},
#     {ship_to_geocode, "00"}, {authority_to_leave, "00"},
#     {signature_flag, "00"}, {before_delivery_date, "00"},
#     {not_after_delivery_date, "00"}, {release_date, "00"},
#     {return_to_company, "00"}, {return_to_contact, "00"},
#     {return_to_address1, "00"}, {return_to_address2, "00"},
#     {return_to_surburb, "00"}, {return_to_locality, "00"},
#     {return_to_region, "00"}, {return_to_country_code, "00"},
#     {return_to_postal_code, "00"}, {return_to_phone_number, "00"},
#     {logistic_weight, "00"}, {length_first_dimension, "00"},
#     {width_second_dimension, "00"}, {depth_thickness_height, "00"},
#     {logistic_volume, "00"}
#   ],
#     var != nil,
#     do: "/" <> id <> "/" <> var
# )

#     {:noreply,
#      socket
#      |>assign(:url, url)

#     }
#   end
