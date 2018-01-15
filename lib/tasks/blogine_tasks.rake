namespace :blogine do
  desc "Load jekyll templates"

  task :import_jekyll, [:templates_path] => :environment do |t, args|
    ActiveRecord::Base.transaction do
      Dir["#{args[:templates_path]}/*"].each do |file_path|
        filename = File.basename(file_path)
        release_date = filename[0,10]
        slug = filename[11, filename.size-11].split('.').first

        title = nil
        category_name = nil
        tags = nil
        File.open(file_path, "r") do |f|
          f.each_with_index do |line, index|
            case index
            when 2 # title
              if line =~ /title/
                title = line[8, line.size-10]
              else
                raise "WTF! ERROR 1001"
              end
            when 3 # category
              if line =~ /category/
                category_name = line[10, line.size-11]
              else
                raise "WTF! ERROR 1002"
              end
            when 4 # tags
              if line =~ /tag/
                tags = line[5, line.size-6]
              else
                raise "WTF! ERROR 1003"
              end
            end
          end
        end
        content = File.read(file_path).split('---').last

        category = Blogine::Category.find_or_create_by!(name: category_name, slug: category_name.downcase)
        category.articles.create!(title: title, release_date: release_date, tags: tags, slug: slug, content: content)
      end
    end
  end
end
