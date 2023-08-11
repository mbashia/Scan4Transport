defmodule TesterWeb.ScanLive.Index do
  use TesterWeb, :live_view
  alias Tester.Scan4transports
  alias Tester.Scan4transports.Scan4transport

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:changeset, Scan4transport.changeset(%Scan4transport{}, %{}))
     |> assign(:url, "https://example.com")
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
     |> assign(:logistic_volume, "")
     |> assign(:prevalue, "")
     |> assign(:prevalue1, "")
     |> assign(:prevalue2, "")
     |> assign(:prevalue3, "")
     |> assign(:prevalue4, "")
     |> assign(:prevalue5, "")
     |> assign(:prevalue6, "")
     |> assign(:prevalue7, "")
     |> assign(:prevalue8, "")
     |> assign(:prevalue9, "")
     |> assign(:prevalue10, "")
     |> assign(:prevalue11, "")
     |> assign(:prevalue12, "")
     |> assign(:prevalue13, "")
     |> assign(:prevalue14, "")
     |> assign(:prevalue15, "")
     |> assign(:prevalue16, "")
     |> assign(:prevalue17, "")
     |> assign(:prevalue18, "")
     |> assign(:prevalue19, "")
     |> assign(:prevalue20, "")
     |> assign(:prevalue21, "")
     |> assign(:prevalue22, "")
     |> assign(:prevalue23, "")
     |> assign(:prevalue24, "")
     |> assign(:prevalue25, "")
     |> assign(:prevalue26, "")
     |> assign(:prevalue27, "")
     |> assign(:prevalue28, "")
     |> assign(:prevalue29, "")
     |> assign(:prevalue30, "")
     |> assign(:prevalue31, "")
     |> assign(:prevalue32, "")
     |> assign(:prevalue33, "")
     |> assign(:prevalue34, "")
     |> assign(:prevalue35, "")
     |> assign(:prevalue36, "")
     |> assign(:prevalue37, "")
     |> assign(:prevalue38, "")
     |> assign(:prevalue39, "")
     |> assign(:questionmark, "")}
  end

  def handle_event("validate", params, socket) do
    IO.inspect(String.length(params["scan4transport"]["sscc"]))
    # IO.inspect(params["scan4transport"]["gnic"])

    prevalue =
      if params["scan4transport"]["sscc"] != "" &&
           String.trim(params["scan4transport"]["sscc"]) != "" do
        "/00/"
      else
        ""
      end

    questionmark =
      if params["scan4transport"]["sscc"] != "" &&
           String.trim(params["scan4transport"]["sscc"]) != "" do
        "?"
      else
        ""
      end

    prevalue1 =
      if params["scan4transport"]["gnic"] != "" &&
           String.trim(params["scan4transport"]["gnic"]) != "" do
        "&401="
      else
        ""
      end

    prevalue2 =
      if params["scan4transport"]["gsin"] != "" &&
           String.trim(params["scan4transport"]["gsin"]) != "" do
        "&402="
      else
        ""
      end

    prevalue3 =
      if params["scan4transport"]["grai"] != "" &&
           String.trim(params["scan4transport"]["grai"]) != "" do
        "&8003="
      else
        ""
      end

    prevalue4 =
      if params["scan4transport"]["routing_code"] != "" &&
           String.trim(params["scan4transport"]["routing_code"]) != "" do
        "&403="
      else
        ""
      end

    prevalue5 =
      if params["scan4transport"]["to_gln"] != "" &&
           String.trim(params["scan4transport"]["to_gln"]) != "" do
        "&410="
      else
        ""
      end

    prevalue6 =
      if params["scan4transport"]["for_gln"] != "" &&
           String.trim(params["scan4transport"]["for_gln"]) != "" do
        "&413="
      else
        ""
      end

    prevalue7 =
      if params["scan4transport"]["service_code_desc"] != "" &&
           String.trim(params["scan4transport"]["service_code_desc"]) != "" do
        "&4320="
      else
        ""
      end

    prevalue8 =
      if params["scan4transport"]["dangerous_goods_flag"] != "" &&
           String.trim(params["scan4transport"]["dangerous_goods_flag"]) != "" do
        "&4321="
      else
        ""
      end

    prevalue9 =
      if params["scan4transport"]["ship_to_company"] != "" &&
           String.trim(params["scan4transport"]["ship_to_company"]) != "" do
        "&4300="
      else
        ""
      end

    prevalue10 =
      if params["scan4transport"]["ship_to_contact"] != "" &&
           String.trim(params["scan4transport"]["ship_to_contact"]) != "" do
        "&4301="
      else
        ""
      end

    prevalue11 =
      if params["scan4transport"]["ship_to_address1"] != "" &&
           String.trim(params["scan4transport"]["ship_to_address1"]) != "" do
        "&4302="
      else
        ""
      end

    prevalue12 =
      if params["scan4transport"]["ship_to_address2"] != "" &&
           String.trim(params["scan4transport"]["ship_to_address2"]) != "" do
        "&4303="
      else
        ""
      end

    prevalue13 =
      if params["scan4transport"]["ship_to_suburb"] != "" &&
           String.trim(params["scan4transport"]["ship_to_suburb"]) != "" do
        "&4304="
      else
        ""
      end

    prevalue14 =
      if params["scan4transport"]["ship_to_locality"] != "" &&
           String.trim(params["scan4transport"]["ship_to_locality"]) != "" do
        "&4305="
      else
        ""
      end

    prevalue15 =
      if params["scan4transport"]["ship_to_region"] != "" &&
           String.trim(params["scan4transport"]["ship_to_region"]) != "" do
        "&4306="
      else
        ""
      end

    prevalue16 =
      if params["scan4transport"]["ship_to_country_code"] != "" &&
           String.trim(params["scan4transport"]["ship_to_country_code"]) != "" do
        "&4307="
      else
        ""
      end

    prevalue17 =
      if params["scan4transport"]["ship_to_postal_code"] != "" &&
           String.trim(params["scan4transport"]["ship_to_postal_code"]) != "" do
        "&420="
      else
        ""
      end

    prevalue18 =
      if params["scan4transport"]["ship_to_phone_number"] != "" &&
           String.trim(params["scan4transport"]["ship_to_phone_number"]) != "" do
        "&4308="
      else
        ""
      end

    prevalue19 =
      if params["scan4transport"]["ship_to_geocode"] != "" &&
           String.trim(params["scan4transport"]["ship_to_geocode"]) != "" do
        "&4309="
      else
        ""
      end

    prevalue20 =
      if params["scan4transport"]["authority_to_leave"] != "" &&
           String.trim(params["scan4transport"]["authority_to_leave"]) != "" do
        "&4322="
      else
        ""
      end

    prevalue21 =
      if params["scan4transport"]["signature_flag"] != "" &&
           String.trim(params["scan4transport"]["signature_flag"]) != "" do
        "&4323="
      else
        ""
      end

    prevalue22 =
      if params["scan4transport"]["before_delivery_date"] != "" &&
           String.trim(params["scan4transport"]["before_delivery_date"]) != "" do
        "&4324="
      else
        ""
      end

    prevalue23 =
      if params["scan4transport"]["not_after_delivery_date"] != "" &&
           String.trim(params["scan4transport"]["not_after_delivery_date"]) != "" do
        "&4325="
      else
        ""
      end

    prevalue24 =
      if params["scan4transport"]["release_date"] != "" &&
           String.trim(params["scan4transport"]["release_date"]) != "" do
        "&4326="
      else
        ""
      end

    prevalue25 =
      if params["scan4transport"]["return_to_company"] != "" &&
           String.trim(params["scan4transport"]["return_to_company"]) != "" do
        "&4310="
      else
        ""
      end

    prevalue26 =
      if params["scan4transport"]["return_to_contact"] != "" &&
           String.trim(params["scan4transport"]["return_to_contact"]) != "" do
        "&4311="
      else
        ""
      end

    prevalue27 =
      if params["scan4transport"]["return_to_address1"] != "" &&
           String.trim(params["scan4transport"]["return_to_address1"]) != "" do
        "&4312="
      else
        ""
      end

    prevalue28 =
      if params["scan4transport"]["return_to_address2"] != "" &&
           String.trim(params["scan4transport"]["return_to_address2"]) != "" do
        "&4313="
      else
        ""
      end

    prevalue29 =
      if params["scan4transport"]["return_to_surburb"] != "" &&
           String.trim(params["scan4transport"]["return_to_surburb"]) != "" do
        "&4314="
      else
        ""
      end

    prevalue30 =
      if params["scan4transport"]["return_to_locality"] != "" &&
           String.trim(params["scan4transport"]["return_to_locality"]) != "" do
        "&4315="
      else
        ""
      end

    prevalue31 =
      if params["scan4transport"]["return_to_region"] != "" &&
           String.trim(params["scan4transport"]["return_to_region"]) != "" do
        "&4316="
      else
        ""
      end

    prevalue32 =
      if params["scan4transport"]["return_to_country_code"] != "" &&
           String.trim(params["scan4transport"]["return_to_country_code"]) != "" do
        "&4317"
      else
        ""
      end

    prevalue33 =
      if params["scan4transport"]["return_to_postal_code"] != "" &&
           String.trim(params["scan4transport"]["return_to_postal_code"]) != "" do
        "&4318="
      else
        ""
      end

    prevalue34 =
      if params["scan4transport"]["return_to_phone_number"] != "" &&
           String.trim(params["scan4transport"]["return_to_phone_number"]) != "" do
        "&4319="
      else
        ""
      end

    prevalue35 =
      if params["scan4transport"]["logistic_weight"] != "" &&
           String.trim(params["scan4transport"]["logistic_weight"]) != "" do
        "&3300="
      else
        ""
      end

    prevalue36 =
      if params["scan4transport"]["length_first_dimension"] != "" &&
           String.trim(params["scan4transport"]["length_first_dimension"]) != "" do
        "&3310="
      else
        ""
      end

    prevalue37 =
      if params["scan4transport"]["width_second_dimension"] != "" &&
           String.trim(params["scan4transport"]["width_second_dimension"]) != "" do
        "&3320="
      else
        ""
      end

    prevalue38 =
      if params["scan4transport"]["depth_thickness_height"] != "" &&
           String.trim(params["scan4transport"]["depth_thickness_height"]) != "" do
        "&3330="
      else
        ""
      end

    prevalue39 =
      if params["scan4transport"]["logistic_volume"] != "" &&
           String.trim(params["scan4transport"]["logistic_volume"]) != "" do
        "&3360="
      else
        ""
      end

    #
    sscc = check_string(params["scan4transport"]["sscc"])
    gnic = check_string(params["scan4transport"]["gnic"])
    gsin = check_string(params["scan4transport"]["gsin"])
    grai = check_string(params["scan4transport"]["grai"])
    routing_code = check_string(params["scan4transport"]["routing_code"])
    to_gln = check_string(params["scan4transport"]["to_gln"])
    for_gln = check_string(params["scan4transport"]["for_gln"])
    service_code_desc = check_string(params["scan4transport"]["service_code_desc"])
    dangerous_goods_flag = check_string(params["scan4transport"]["dangerous_goods_flag"])
    ship_to_company = check_string(params["scan4transport"]["ship_to_company"])
    ship_to_contact = check_string(params["scan4transport"]["ship_to_contact"])
    ship_to_address1 = check_string(params["scan4transport"]["ship_to_address1"])
    ship_to_address2 = check_string(params["scan4transport"]["ship_to_address2"])
    ship_to_suburb = check_string(params["scan4transport"]["ship_to_suburb"])
    ship_to_locality = check_string(params["scan4transport"]["ship_to_locality"])
    ship_to_region = check_string(params["scan4transport"]["ship_to_region"])
    ship_to_country_code = check_string(params["scan4transport"]["ship_to_country_code"])
    ship_to_postal_code = check_string(params["scan4transport"]["ship_to_postal_code"])
    ship_to_phone_number = check_string(params["scan4transport"]["ship_to_phone_number"])
    ship_to_geocode = check_string(params["scan4transport"]["ship_to_geocode"])
    authority_to_leave = check_string(params["scan4transport"]["authority_to_leave"])
    signature_flag = check_string(params["scan4transport"]["signature_flag"])
    before_delivery_date = check_string(params["scan4transport"]["before_delivery_date"])
    not_after_delivery_date = check_string(params["scan4transport"]["not_after_delivery_date"])
    release_date = check_string(params["scan4transport"]["release_date"])
    return_to_company = check_string(params["scan4transport"]["return_to_company"])
    return_to_contact = check_string(params["scan4transport"]["return_to_contact"])
    return_to_address1 = check_string(params["scan4transport"]["return_to_address1"])
    return_to_address2 = check_string(params["scan4transport"]["return_to_address2"])
    return_to_surburb = check_string(params["scan4transport"]["return_to_surburb"])
    return_to_locality = check_string(params["scan4transport"]["return_to_locality"])
    return_to_region = check_string(params["scan4transport"]["return_to_region"])
    return_to_country_code = check_string(params["scan4transport"]["return_to_country_code"])
    return_to_postal_code = check_string(params["scan4transport"]["return_to_postal_code"])
    return_to_phone_number = check_string(params["scan4transport"]["return_to_phone_number"])
    logistic_weight = check_string(params["scan4transport"]["logistic_weight"])
    length_first_dimension = check_string(params["scan4transport"]["length_first_dimension"])
    width_second_dimension = check_string(params["scan4transport"]["width_second_dimension"])
    depth_thickness_height = check_string(params["scan4transport"]["depth_thickness_height"])
    logistic_volume = check_string(params["scan4transport"]["logistic_volume"])
    latitude = check_string(params["scan4transport"]["latitude"])
    longitude = check_string(params["scan4transport"]["longitude"])

    {:noreply,
     socket
     |> assign(:sscc, sscc)
     |> assign(:gnic, gnic)
     #  |> assign(:symbol, params["scan4transport"]["symbol"])
     |> assign(:gsin, gsin)
     |> assign(:grai, grai)
     |> assign(:routing_code, routing_code)
     |> assign(:to_gln, to_gln)
     |>assign(:for_gln, for_gln)
     |> assign(:service_code_desc, service_code_desc)
     |> assign(:dangerous_goods_flag, dangerous_goods_flag)
     |> assign(:ship_to_company, ship_to_company)
     |> assign(:ship_to_contact, ship_to_contact)
     |> assign(:ship_to_address1, ship_to_address1)
     |> assign(:ship_to_address2, ship_to_address2)
     |> assign(:ship_to_suburb, ship_to_suburb)
     |> assign(:ship_to_locality, ship_to_locality)
     |> assign(:ship_to_region, ship_to_region)
     |> assign(:ship_to_country_code, ship_to_country_code)
     |> assign(:ship_to_postal_code, ship_to_postal_code)
     |> assign(:ship_to_phone_number, ship_to_phone_number)
     |> assign(:ship_to_geocode, ship_to_geocode)
     |> assign(:authority_to_leave, authority_to_leave)
     |> assign(:signature_flag, signature_flag)
     |> assign(:before_delivery_date, before_delivery_date)
     |> assign(:not_after_delivery_date, not_after_delivery_date)
     |> assign(:release_date, release_date)
     |> assign(:return_to_company, return_to_company)
     |> assign(:return_to_contact, return_to_contact)
     |> assign(:return_to_address1, return_to_address1)
     |> assign(:return_to_address2, return_to_address2)
     |> assign(:return_to_surburb, return_to_surburb)
     |> assign(:return_to_locality, return_to_locality)
     |> assign(:return_to_region, return_to_region)
     |> assign(:return_to_country_code, return_to_country_code)
     |> assign(:return_to_postal_code, return_to_postal_code)
     |> assign(:return_to_phone_number, return_to_phone_number)
     |> assign(:logistic_weight, logistic_weight)
     |> assign(:length_first_dimension, length_first_dimension)
     |> assign(:width_second_dimension, width_second_dimension)
     |> assign(:depth_thickness_height, depth_thickness_height)
     |> assign(:logistic_volume, logistic_volume)
     |> assign(:latitude, latitude)
     |> assign(:longitude, longitude)
     |> assign(:prevalue, prevalue)
     |> assign(:prevalue1, prevalue1)
     |> assign(:prevalue2, prevalue2)
     |> assign(:prevalue3, prevalue3)
     |> assign(:prevalue4, prevalue4)
     |> assign(:prevalue5, prevalue5)
     |> assign(:prevalue6, prevalue6)
     |> assign(:prevalue7, prevalue7)
     |> assign(:prevalue8, prevalue8)
     |> assign(:prevalue9, prevalue9)
     |> assign(:prevalue10, prevalue10)
     |> assign(:prevalue11, prevalue11)
     |> assign(:prevalue12, prevalue12)
     |> assign(:prevalue13, prevalue13)
     |> assign(:prevalue14, prevalue14)
     |> assign(:prevalue15, prevalue15)
     |> assign(:prevalue16, prevalue16)
     |> assign(:prevalue17, prevalue17)
     |> assign(:prevalue18, prevalue18)
     |> assign(:prevalue19, prevalue19)
     |> assign(:prevalue20, prevalue20)
     |> assign(:prevalue21, prevalue21)
     |> assign(:prevalue22, prevalue22)
     |> assign(:prevalue23, prevalue23)
     |> assign(:prevalue24, prevalue24)
     |> assign(:prevalue25, prevalue25)
     |> assign(:prevalue26, prevalue26)
     |> assign(:prevalue27, prevalue27)
     |> assign(:prevalue28, prevalue28)
     |> assign(:prevalue29, prevalue29)
     |> assign(:prevalue30, prevalue30)
     |> assign(:prevalue31, prevalue31)
     |> assign(:prevalue32, prevalue32)
     |> assign(:prevalue33, prevalue33)
     |> assign(:prevalue34, prevalue34)
     |> assign(:prevalue35, prevalue35)
     |> assign(:prevalue36, prevalue36)
     |> assign(:prevalue37, prevalue37)
     |> assign(:prevalue38, prevalue38)
     |> assign(:prevalue39, prevalue39)
     |> assign(:questionmark, questionmark)}
  end

  def handle_event("save", _, socket) do
    {:noreply, socket}
  end

  defp check_string(params) do
    params =
      if String.trim(params) == "" do
        ""
      else
        params
        |> String.trim_leading()
        |> String.replace(" ", "+")
      end
  end
  def uncheck_string(word)do
    String.replace(word,"+"," ")
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
