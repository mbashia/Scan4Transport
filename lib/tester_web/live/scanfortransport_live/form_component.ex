defmodule TesterWeb.ScanfortransportLive.FormComponent do
  use TesterWeb, :live_component

  alias Tester.Scanfortransports

  @impl true
  def update(%{scanfortransport: scanfortransport} = assigns, socket) do
    changeset = Scanfortransports.change_scanfortransport(scanfortransport)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:changeset, changeset)}
  end

  @impl true
  def handle_event("validate", %{"scanfortransport" => scanfortransport_params}, socket) do
    changeset =
      socket.assigns.scanfortransport
      |> Scanfortransports.change_scanfortransport(scanfortransport_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, :changeset, changeset)}
  end

  def handle_event("save", %{"scanfortransport" => scanfortransport_params}, socket) do
    save_scanfortransport(socket, socket.assigns.action, scanfortransport_params)
  end

  defp save_scanfortransport(socket, :edit, scanfortransport_params) do
    case Scanfortransports.update_scanfortransport(socket.assigns.scanfortransport, scanfortransport_params) do
      {:ok, _scanfortransport} ->
        {:noreply,
         socket
         |> put_flash(:info, "Scanfortransport updated successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, :changeset, changeset)}
    end
  end

  defp save_scanfortransport(socket, :new, scanfortransport_params) do
    case Scanfortransports.create_scanfortransport(scanfortransport_params) do
      {:ok, _scanfortransport} ->
        {:noreply,
         socket
         |> put_flash(:info, "Scanfortransport created successfully")
         |> push_redirect(to: socket.assigns.return_to)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end
end
