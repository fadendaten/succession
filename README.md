# Succession

[![Gem Version](https://badge.fury.io/rb/succession.png)](http://badge.fury.io/rb/succession)

Manage the Rails object succession easily.

You have to privide a user manage succession for a Rails object, you can simply
add this gem.

## Installation

Add to your Gemfile:

    gem succession

and run the bundle install command.
After the installation type into your terminal:

    rake succession:install:migrations

to execute the gem's migrations.

## Usage

### Model

To add the succession behavior, put this code into your model.

    class Post < ActiveRecord::Base
      include Succession

      # Your code.

    end

### View

There are two ways to implement the up and down rating into your view.

#### 1. up_link_to, down_link_to

If you want to use links add this into your view files:

For up rating:

    <%= up_link_to "rate up", @post%>

For down rating:

    <%= down_link_to "rate up", @post%>

#### 1. up_link_to, down_link_to

If you are more the button type, use this:

For up rating:

    <%= up_button_to "rate up", @post%>

For down rating:

    <%= down_button_to "rate up", @post%>

## Copyright

Copyright (c) 2013 Fadendaten GmbH. See MIT-LICENSE for details.

