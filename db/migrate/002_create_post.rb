Sequel.migration do
  change do
    create_table(:posts) do
      primary_key :id
      foreign_key :user_id, :users
      String :content , null:false
    end
  end
end

