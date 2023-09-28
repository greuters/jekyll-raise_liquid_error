> Simple liquid filter to raise build-time errors from liquid code

## Installation

This plugin is available as a [RubyGem][ruby-gem].

Add this line to your application's `Gemfile`:

```
gem 'jekyll-raise_liquid_error'
```

And then execute the `bundle` command to install the gem.

Alternatively, you can also manually install the gem using the following command:

```
$ gem install jekyll-raise_liquid_error
```

After the plugin has been installed successfully, add the following lines to your `_config.yml` in order to tell Jekyll to use the plugin:

```
gems:
- jekyll-raise_liquid_error
```

## Getting Started

In your markup, use the `raise_error` liquid filter anywhere the compiler should never land at build time:

```
{{ 'Error Message: something is wrong with your site' | raise_error }}
```

This will make your build fail with the error message you defined along with the location of the markup file involved.

## Example usage

```
{%- if your_var != nil -%}
{{'Variable your_var expected to be nil, but was: ' | append: your_var | raise_error }}"
{%- endif -%}
```

This will fail your build (if external plugins are allowed, e.g. locally) and give you some hint what went wrong.

# Contribute

If you know anything more about ruby and can improve this snippet (e.g. adding working tests), please fork this repository and issue a pull request.


# Copyright

I just packaged this snippet from 

https://stackoverflow.com/questions/43901429/raise-exceptions-during-a-jekyll-build-if-specified-yaml-fields-are-missing

to get a valid Gem. All kudos to mdlincoln.

License: MIT

[ruby-gem]: https://rubygems.org/gems/jekyll-raise_liquid_error
