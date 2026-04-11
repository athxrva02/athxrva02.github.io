all:
	bundle exec jekyll build
preview:
	bundle exec jekyll serve --watch --baseurl ''
install:
	@ruby -e 'exit 0 if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.2.0"); STDERR.puts "ERROR: Ruby >= 3.2 required (you have #{RUBY_VERSION}). Use Homebrew: brew install ruby, add it to PATH, then gem install bundler. See AGENTS.md (Local Ruby setup)."; exit 1'
	bundle install
