defmodule Lens.Repo.Migrations.CreatePhotos do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :filename, :string, null: false
      add :desc, :text, null: false
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :uuid, :string, null: false

      timestamps()
    end

    create index(:photos, [:user_id])
  end
end