defmodule TesterWeb.Scan4transportLive.FormComponent do
  use TesterWeb, :live_component

  alias Tester.Scan4transports

  @impl true
  def update(%{scan4transport: scan4transport} = assigns, socket) do
    changeset = Scan4transports.change_scan4transport(scan4transport)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"scan4transport" => scan4transport_params}, socket) do
    changeset =
      socket.assigns.scan4transport
      |> Scan4transports.change_scan4transport(scan4transport_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"scan4transport" => scan4transport_params}, socket) do
    save_scan4transport(socket, socket.assigns.action, scan4transport_params)
  end

  defp save_scan4transport(socket, :edit, scan4transport_params) do
    case Scan4transports.update_scan4transport(
           socket.assigns.scan4transport,
           scan4transport_params
         ) do
      {:ok, _scan4transport} ->
        {:noreply,
         socket
         |> put_flash(:info, "Scan4transport updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_scan4transport(socket, :new, scan4transport_params) do
    case Scan4transports.create_scan4transport(scan4transport_params) do
      {:ok, _scan4transport} ->
        {:noreply,
         socket
         |> put_flash(:info, "Scan4transport created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
