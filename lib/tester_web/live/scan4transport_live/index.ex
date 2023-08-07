defmodule TesterWeb.Scan4transportLive.Index do
  use TesterWeb, :live_view

  alias Tester.Scan4transports
  alias Tester.Scan4transports.Scan4transport

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :scan4transports, list_scan4transports())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Scan4transport")
    |> assign(:scan4transport, Scan4transports.get_scan4transport!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Scan4transport")
    |> assign(:scan4transport, %Scan4transport{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Scan4transports")
    |> assign(:scan4transport, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    scan4transport = Scan4transports.get_scan4transport!(id)
    {:ok, _} = Scan4transports.delete_scan4transport(scan4transport)

    {:noreply, assign(socket, :scan4transports, list_scan4transports())}
  end

  defp list_scan4transports do
    Scan4transports.list_scan4transports()
  end
end
