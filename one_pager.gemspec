# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','one_pager','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'one_pager'
  s.version = OnePager::VERSION
  s.author = 'Michael Poage'
  s.email = 'poage.michael.cu@gmail.com'
  s.homepage = 'https://github.com/RubyBrewsday/one_pager'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Easily manage one-pager documentation via the command line. #spicy'
  s.description = %q{
    Everyone loves version control yeah? People also love to keep our business proposals organized.
    Why not have both? Using `one-pager` you can easily generate new one-pagers anywhere in your system.
    Simply run `$ one-pager init` in any directory and it will create a `docs/one-pagers` folder if it does
    not exist, as well as a `.one-pager` file if it already doesn't exist (this file is used for setting configurations).

    From here you can run commands such as `one-pager create "Allow users to purchase in DogeCoin"` and it will
    generate a markdown file (`doc/one-pagers/allow_users_to_purchase_in_dogecoin.md`), which will be pre-populated with
    with your one-pager template. This can be configured via the `.one-pager` file.
  }
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','one_pager.rdoc']
  s.rdoc_options << '--title' << 'one_pager' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'one_pager'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('pry')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.18.0')
  s.add_runtime_dependency('tilt', '2.0.9')
end
