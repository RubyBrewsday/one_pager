# OnePager
[![Maintainability](https://api.codeclimate.com/v1/badges/e7fdf4ae08946a712268/maintainability)](https://codeclimate.com/github/RubyBrewsday/one_pager/maintainability)

Because everyone likes to write business proposals via the terminal.

## Description

Simply run `$ one-pager init` in any directory and it will create a `docs/one-pagers` folder if it does
not exist, as well as a `.one-pager` file if it already doesn't exist (this file is used for setting configurations).

From here you can run commands such as `one-pager create "Allow users to purchase in DogeCoin"` and it will
generate a markdown file (`doc/one-pagers/allow_users_to_purchase_in_dogecoin.md`), which will be pre-populated with
with your one-pager template. This can be configured via the `.one-pager` file.
