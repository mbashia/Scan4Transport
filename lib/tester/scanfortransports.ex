defmodule Tester.Scanfortransports do
  @moduledoc """
  The Scanfortransports context.
  """

  import Ecto.Query, warn: false
  alias Tester.Repo

  alias Tester.Scanfortransports.Scanfortransport

  @doc """
  Returns the list of scanfortransports.

  ## Examples

      iex> list_scanfortransports()
      [%Scanfortransport{}, ...]

  """
  def list_scanfortransports do
    Repo.all(Scanfortransport)
  end

  @doc """
  Gets a single scanfortransport.

  Raises `Ecto.NoResultsError` if the Scanfortransport does not exist.

  ## Examples

      iex> get_scanfortransport!(123)
      %Scanfortransport{}

      iex> get_scanfortransport!(456)
      ** (Ecto.NoResultsError)

  """
  def get_scanfortransport!(id), do: Repo.get!(Scanfortransport, id)

  @doc """
  Creates a scanfortransport.

  ## Examples

      iex> create_scanfortransport(%{field: value})
      {:ok, %Scanfortransport{}}

      iex> create_scanfortransport(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_scanfortransport(attrs \\ %{}) do
    %Scanfortransport{}
    |> Scanfortransport.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a scanfortransport.

  ## Examples

      iex> update_scanfortransport(scanfortransport, %{field: new_value})
      {:ok, %Scanfortransport{}}

      iex> update_scanfortransport(scanfortransport, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_scanfortransport(%Scanfortransport{} = scanfortransport, attrs) do
    scanfortransport
    |> Scanfortransport.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a scanfortransport.

  ## Examples

      iex> delete_scanfortransport(scanfortransport)
      {:ok, %Scanfortransport{}}

      iex> delete_scanfortransport(scanfortransport)
      {:error, %Ecto.Changeset{}}

  """
  def delete_scanfortransport(%Scanfortransport{} = scanfortransport) do
    Repo.delete(scanfortransport)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking scanfortransport changes.

  ## Examples

      iex> change_scanfortransport(scanfortransport)
      %Ecto.Changeset{data: %Scanfortransport{}}

  """
  def change_scanfortransport(%Scanfortransport{} = scanfortransport, attrs \\ %{}) do
    Scanfortransport.changeset(scanfortransport, attrs)
  end
end
