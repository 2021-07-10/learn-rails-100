# Rails Application Templates


**`app_name`**

* [`5.2.6+`](https://github.com/rails/rails/blob/0b3a63fe07507fca5b2cab6409e85789a46ed624/railties/lib/rails/generators/app_name.rb#L9) `tr('\\', "").tr("-. ", "_")`
* [`5.2.6`](https://github.com/rails/rails/blob/v5.2.6/railties/lib/rails/generators/rails/app/app_generator.rb#L497) `.tr('\\', "").tr(". ", "_")`

**`version`**

* [`Rails.version`](https://github.com/rails/rails/blob/main/railties/lib/rails/version.rb)
* [`Rails.gem_version`](https://github.com/rails/rails/blob/main/railties/lib/rails/gem_version.rb)
* [`Gem::Version`](https://ruby-doc.org/stdlib-2.5.0/libdoc/rubygems/rdoc/Gem/Version.html)

## Ref

* [Rails Application Templates — Ruby on Rails Guides](https://guides.rubyonrails.org/rails_application_templates.html)
* [Thor](http://whatisthor.com/)、[Actions](http://www.rubydoc.info/github/wycats/thor/Thor/Actions)