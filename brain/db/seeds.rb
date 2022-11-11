def generate_random_posts desired_pot_count
  desired_pot_count.times do |p|
    words = "ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.".gsub(/\.|,/, "").split(" ").shuffle

    Post.create(title: words[0..3].join(" ").capitalize, description: words[3..20].join(" "))
  end
end

generate_random_posts 15