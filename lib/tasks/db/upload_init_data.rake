namespace :db do
  task upload_init_data: :environment do
    db_init_dir = Dir.new Rails.root.join("db","db_init")
    file_dumps = db_init_dir.entries.select {|file| !%w[. ..].include?(file)}

    file_dumps.each do |dump|
      puts "import dump to db: #{dump}"
      sql = File.read Rails.root.join("db","db_init",dump)
      ActiveRecord::Base.connection.execute sql  if sql.present?
    end
  end
end