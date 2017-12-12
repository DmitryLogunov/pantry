namespace :db do
  task dump_tables_data: :environment do
    sql_show_tables = "SELECT table_name
                       FROM   information_schema.tables
                       WHERE  table_type = 'BASE TABLE'
                              AND table_schema NOT IN ('pg_catalog', 'information_schema')
                              AND table_name NOT IN ('schema_migrations','ar_internal_metadata')"
    connection = ActiveRecord::Base.connection
    connection.execute(sql_show_tables).each do |row|
      table_num_rows_sql = "SELECT count(*) FROM #{row['table_name']}"
      table_num_rows = connection.execute(table_num_rows_sql).first['count']

      next if table_num_rows.zero?

      puts "creating dump for #{row['table_name']} (#{table_num_rows} rows)"

      dump_file_path = Rails.root.join("db","db_init","pgdb_public_#{row['table_name']}.sql")
      File.delete(dump_file_path) if File.exist?(dump_file_path)

      create_dump_cmd = %w[pg_dump ::space:: -h  ::space::  ::DATABASE_HOST:: ::space::
                           -U ::space:: ::DATABASE_USERNAME:: ::space::
                           -d ::space:: ::DATABASE_DATABASE:: ::space::
                           --table=::table_name:: ::space::
                           --attribute-inserts ::space::
                           --data-only ::space::
                           > ::space:: db/db_init/pgdb_public_::table_name::.sql].join
      create_dump_cmd
        .gsub!('::DATABASE_HOST::', ENV['DATABASE_HOST'])
        .gsub!('::DATABASE_USERNAME::', ENV['DATABASE_USERNAME'])
        .gsub!('::DATABASE_DATABASE::', ENV['DATABASE_DATABASE'])
        .gsub!('::table_name::', row['table_name'])
        .gsub!('::space::', ' ')

      sh create_dump_cmd
    end
  end
end
