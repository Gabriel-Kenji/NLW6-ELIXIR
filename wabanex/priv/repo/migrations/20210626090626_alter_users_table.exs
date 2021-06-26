defmodule Wabanex.Repo.Migrations.AlterUsersTable do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :weight, :real
      add :height, :real
      add :fat_index, :string
      add :muscle_index, :string
    end
  end
end
