class IncreaseApiKey < ActiveRecord::Migration
  def up
    # To work with Postgres & MacOS X I needed to increase the API Key column size
    # This was 16, but I was getting keys 18 characters long
    # So why not make this 64 characters...
    change_column :api_keys, :api_key, :string, :limit => 64
  end

  def down
  end
end
