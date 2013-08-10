Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :username , null: false
      String :email, null: false
      String :age, null: false
    end
  end
end
