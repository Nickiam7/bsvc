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


**NOTE:** BSVC does _not_ include Bootstrap for you, this is by design. BSVC will work however you include Bootstrap in your application, whether through sprockets, esbuild, import map or any other way.


## Usage

Basic four column grid that shrinks to two, double stacked columns at the 768px (md) breakpont. Each column contains a heading component.

- The last column shows an `h` component passing content in through a block rather than the `text:` option.

```ruby
<%= container do %>
  <%= row do |c| %>
    <%= column(c, col: { md: 6, lg: 3 }) do %>
      <%= h(tag: 'h2', text: 'Column 1') %>
    <% end %>
    <%= column(c, col: { md: 6, lg: 3 }) do %>
      <%= h(tag: 'h2', text: 'Column 2') %>
    <% end %>
    <%= column(c, col: { md: 6, lg: 3 }) do %>
      <%= h(tag: 'h2', text: 'Column 3') %>
    <% end %>
    <%= column(c, col: { md: 6, lg: 3 }) do %>
      <%= h(tag: 'h2') do %>
        <i class="bi bi-4-circle-fill"></i> Column 4
      <% end %>
    <% end %>
  <% end %>
<% end %>
```

### Compoments used:
- Container
  - Accepts two options, type of container (`sm, md, lg...fluid`) and any additional classes
- Row
  - Accepts additional classes (`row` is default) and styles.
- Column
  - Accepts:
    - col (`md: 6`)
    - offset (`md: 6`)
    - classes
    - styles
- Heading (h)
  - Accepts:
    - text (only if no block is provided)
    - tag (h1, h2, h3 etc)
    - classes
    - styles

## Customizing Components

If you need to customize components you can copy them into your application.

### All Components

To copy all compoents into your app run:

```ruby
rails g bsvc:components
```

This will copy over all of BSVC components and helpers. It will create an `app/components/` directory in the root of app. All helpers will be placed inside `app/helpers/`.

### A Single Component

```ruby
rails g bsvc:component --name COMPONENT_NAME
```
`COMPONENT_NAME` should be the top level directory of the coponent you want in `app/components/`

**NOTE** Running the `component` command on a component with child components will copy over all child components in the top level directory.

### A Single Nested Component
For components that are organized in nested directory you can pass the path of the component starting with the top level directory.

```ruby
rails g bsvc:component --name grid/container
```

This will grab only the container component and helper and place them in `app/components/grid` and `app/helpers/grid`.


## Roadmap
- Continue building out components
- Continue creating usage doc
- Continue add to README.md

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com//Nickiam7/bsvc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
