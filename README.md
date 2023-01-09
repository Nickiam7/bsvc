# Bootstrap ViewComponents (BSVC)

Bootstrap ViewComponents is a component library built on [Bootstrap](https://github.com/twbs/bootstrap) and [VeiwComponent](https://github.com/viewcomponent/view_component).

BSVC offers a component based development workflow similar to React or Vue by neatly packaging Bootstrap into components to make your Rails UI development faster, easier and more fun!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bsvc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bsvc

## Usage

TODO: Examples for using components coming soon.

## Customizing Components

If you need to customize components you can copy them into your application.

### All Components

To copy all compoents into your app run:

```ruby
rails g bsvc:components
```

This will copy over all of BSVC components and helpers. It will create a `components/` directory inside of `app/`. All helpers will be placed inside `app/helpers/`.

### A Single Component

```ruby
rails g bsvc:component --name COMPONENT_NAME
```
`--name` should be the top level directory of the coponent you want in `app/components/`

## Roadmap
- Continue building out components
- Continue creating usage doc
- Continue add to README.md

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com//Nickiam7/bsvc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
