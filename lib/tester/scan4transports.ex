defmodule Tester.Scan4transports do
  @moduledoc """
  The Scan4transports context.
  """

  import Ecto.Query, warn: false
  alias Tester.Repo

  alias Tester.Scan4transports.Scan4transport

  @doc """
  Returns the list of scan4transports.

  ## Examples

      iex> list_scan4transports()
      [%Scan4transport{}, ...]

  """
  def list_scan4transports do
    Repo.all(Scan4transport)
  end

  @doc """
  Gets a single scan4transport.

  Raises `Ecto.NoResultsError` if the Scan4transport does not exist.

  ## Examples

      iex> get_scan4transport!(123)
      %Scan4transport{}

      iex> get_scan4transport!(456)
      ** (Ecto.NoResultsError)

  """
  def get_scan4transport!(id), do: Repo.get!(Scan4transport, id)

  @doc """
  Creates a scan4transport.

  ## Examples

      iex> create_scan4transport(%{field: value})
      {:ok, %Scan4transport{}}

      iex> create_scan4transport(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_scan4transport(attrs \\ %{}) do
    %Scan4transport{}
    |> Scan4transport.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a scan4transport.

  ## Examples

      iex> update_scan4transport(scan4transport, %{field: new_value})
      {:ok, %Scan4transport{}}

      iex> update_scan4transport(scan4transport, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_scan4transport(%Scan4transport{} = scan4transport, attrs) do
    scan4transport
    |> Scan4transport.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a scan4transport.

  ## Examples

      iex> delete_scan4transport(scan4transport)
      {:ok, %Scan4transport{}}

      iex> delete_scan4transport(scan4transport)
      {:error, %Ecto.Changeset{}}

  """
  def delete_scan4transport(%Scan4transport{} = scan4transport) do
    Repo.delete(scan4transport)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking scan4transport changes.

  ## Examples

      iex> change_scan4transport(scan4transport)
      %Ecto.Changeset{data: %Scan4transport{}}

  """
  def change_scan4transport(%Scan4transport{} = scan4transport, attrs \\ %{}) do
    Scan4transport.changeset(scan4transport, attrs)
  end
end
