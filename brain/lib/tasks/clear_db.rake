desc 'Quick way to clear the database of posts'
task :delete_all_posts => :environment do
  Post.delete_all
end