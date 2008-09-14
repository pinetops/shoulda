Gem::Specification.new do |s|
  s.name = %q{shoulda}
  s.version = "4.1.2"

  s.required_rubygems_version = Gem::Requirement.new("= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tammer Saleh"]
  s.date = %q{2008-09-13}
  s.default_executable = %q{convert_to_should_syntax}
  s.description = %q{Testing made easier on the fingers and the eyes, in gem form}
  s.email = %q{}
  s.executables = ["convert_to_should_syntax"]
  s.extra_rdoc_files = ["bin/convert_to_should_syntax", "lib/shoulda/action_mailer/assertions.rb", "lib/shoulda/action_mailer.rb", "lib/shoulda/active_record/assertions.rb", "lib/shoulda/active_record/macros.rb", "lib/shoulda/active_record.rb", "lib/shoulda/assertions.rb", "lib/shoulda/context.rb", "lib/shoulda/controller/formats/html.rb", "lib/shoulda/controller/formats/xml.rb", "lib/shoulda/controller/helpers.rb", "lib/shoulda/controller/macros.rb", "lib/shoulda/controller/resource_options.rb", "lib/shoulda/controller.rb", "lib/shoulda/helpers.rb", "lib/shoulda/macros.rb", "lib/shoulda/private_helpers.rb", "lib/shoulda/proc_extensions.rb", "lib/shoulda/rails.rb", "lib/shoulda/tasks/list_tests.rake", "lib/shoulda/tasks/yaml_to_shoulda.rake", "lib/shoulda/tasks.rb", "lib/shoulda.rb", "README.rdoc", "tasks/shoulda.rake"]
  s.files = ["bin/convert_to_should_syntax", "CONTRIBUTION_GUIDELINES.rdoc", "init.rb", "lib/shoulda/action_mailer/assertions.rb", "lib/shoulda/action_mailer.rb", "lib/shoulda/active_record/assertions.rb", "lib/shoulda/active_record/macros.rb", "lib/shoulda/active_record.rb", "lib/shoulda/assertions.rb", "lib/shoulda/context.rb", "lib/shoulda/controller/formats/html.rb", "lib/shoulda/controller/formats/xml.rb", "lib/shoulda/controller/helpers.rb", "lib/shoulda/controller/macros.rb", "lib/shoulda/controller/resource_options.rb", "lib/shoulda/controller.rb", "lib/shoulda/helpers.rb", "lib/shoulda/macros.rb", "lib/shoulda/private_helpers.rb", "lib/shoulda/proc_extensions.rb", "lib/shoulda/rails.rb", "lib/shoulda/tasks/list_tests.rake", "lib/shoulda/tasks/yaml_to_shoulda.rake", "lib/shoulda/tasks.rb", "lib/shoulda.rb", "Manifest", "MIT-LICENSE", "Rakefile", "README.rdoc", "shoulda.gemspec", "tasks/shoulda.rake", "test/fixtures/addresses.yml", "test/fixtures/friendships.yml", "test/fixtures/posts.yml", "test/fixtures/products.yml", "test/fixtures/taggings.yml", "test/fixtures/tags.yml", "test/fixtures/users.yml", "test/functional/posts_controller_test.rb", "test/functional/users_controller_test.rb", "test/other/context_test.rb", "test/other/convert_to_should_syntax_test.rb", "test/other/helpers_test.rb", "test/other/private_helpers_test.rb", "test/other/should_test.rb", "test/rails_root/app/controllers/application.rb", "test/rails_root/app/controllers/posts_controller.rb", "test/rails_root/app/controllers/users_controller.rb", "test/rails_root/app/helpers/application_helper.rb", "test/rails_root/app/helpers/posts_helper.rb", "test/rails_root/app/helpers/users_helper.rb", "test/rails_root/app/models/address.rb", "test/rails_root/app/models/dog.rb", "test/rails_root/app/models/flea.rb", "test/rails_root/app/models/friendship.rb", "test/rails_root/app/models/post.rb", "test/rails_root/app/models/product.rb", "test/rails_root/app/models/tag.rb", "test/rails_root/app/models/tagging.rb", "test/rails_root/app/models/user.rb", "test/rails_root/app/views/layouts/posts.rhtml", "test/rails_root/app/views/layouts/users.rhtml", "test/rails_root/app/views/posts/edit.rhtml", "test/rails_root/app/views/posts/index.rhtml", "test/rails_root/app/views/posts/new.rhtml", "test/rails_root/app/views/posts/show.rhtml", "test/rails_root/app/views/users/edit.rhtml", "test/rails_root/app/views/users/index.rhtml", "test/rails_root/app/views/users/new.rhtml", "test/rails_root/app/views/users/show.rhtml", "test/rails_root/config/boot.rb", "test/rails_root/config/database.yml", "test/rails_root/config/environment.rb", "test/rails_root/config/environments/sqlite3.rb", "test/rails_root/config/initializers/new_rails_defaults.rb", "test/rails_root/config/initializers/shoulda.rb", "test/rails_root/config/routes.rb", "test/rails_root/db/migrate/001_create_users.rb", "test/rails_root/db/migrate/002_create_posts.rb", "test/rails_root/db/migrate/003_create_taggings.rb", "test/rails_root/db/migrate/004_create_tags.rb", "test/rails_root/db/migrate/005_create_dogs.rb", "test/rails_root/db/migrate/006_create_addresses.rb", "test/rails_root/db/migrate/007_create_fleas.rb", "test/rails_root/db/migrate/008_create_dogs_fleas.rb", "test/rails_root/db/migrate/009_create_products.rb", "test/rails_root/db/migrate/010_create_friendships.rb", "test/rails_root/db/schema.rb", "test/rails_root/public/404.html", "test/rails_root/public/422.html", "test/rails_root/public/500.html", "test/rails_root/script/console", "test/rails_root/script/generate", "test/README", "test/test_helper.rb", "test/unit/address_test.rb", "test/unit/dog_test.rb", "test/unit/flea_test.rb", "test/unit/friendship_test.rb", "test/unit/post_test.rb", "test/unit/product_test.rb", "test/unit/tag_test.rb", "test/unit/tagging_test.rb", "test/unit/user_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://thoughtbot.com/projects/shoulda}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Shoulda", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{shoulda}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Testing made easier on the fingers and the eyes, in gem form}
  s.test_files = ["test/functional/posts_controller_test.rb", "test/functional/users_controller_test.rb", "test/other/context_test.rb", "test/other/convert_to_should_syntax_test.rb", "test/other/helpers_test.rb", "test/other/private_helpers_test.rb", "test/other/should_test.rb", "test/unit/address_test.rb", "test/unit/dog_test.rb", "test/unit/flea_test.rb", "test/unit/friendship_test.rb", "test/unit/post_test.rb", "test/unit/product_test.rb", "test/unit/tag_test.rb", "test/unit/tagging_test.rb", "test/unit/user_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
