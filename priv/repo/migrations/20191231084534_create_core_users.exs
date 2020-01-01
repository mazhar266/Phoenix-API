defmodule Devstech.Repo.Migrations.CreateCoreUsers do
  use Ecto.Migration

  def change do
    create table(:core_users) do
      add :name, :string
      add :email, :string
      add :password, :string

      timestamps()
    end

  end
end
