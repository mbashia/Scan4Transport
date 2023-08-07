defmodule TesterWeb.ScanfortransportLive.Index do
  use TesterWeb, :live_view

  alias Tester.Scanfortransports
  alias Tester.Scanfortransports.Scanfortransport

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :scanfortransports, list_scanfortransports())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Scanfortransport")
    |> assign(:scanfortransport, Scanfortransports.get_scanfortransport!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Scanfortransport")
    |> assign(:scanfortransport, %Scanfortransport{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Scanfortransports")
    |> assign(:scanfortransport, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    scanfortransport = Scanfortransports.get_scanfortransport!(id)
    {:ok, _} = Scanfortransports.delete_scanfortransport(scanfortransport)

    {:noreply, assign(socket, :scanfortransports, list_scanfortransports())}
  end

  defp list_scanfortransports do
    Scanfortransports.list_scanfortransports()
  end
end
