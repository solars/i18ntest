require 'rubygems'
require 'bundler'

Bundler.setup

require 'i18n'
require 'i18n-translate'
require 'i18n/backend/fallbacks'

I18n::Backend::Simple.send(:include, I18n::Backend::Translate)
I18n.default_locale = :en
I18n.load_path << Dir['./support/*.yml']
puts I18n.t(:'number.format', :locale => 'de').inspect
