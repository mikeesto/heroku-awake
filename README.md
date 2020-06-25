# Heroku Awake

A free Heroku web dyno will go to sleep if it does not receive any web traffic within a 30 minute period. When a sleeping dyno receives web traffic it will become active again, but there is a short delay as the application needs to be reloaded.

This GitHub action keeps a Heroku dyno awake by making a HTTP request to it every 30 minutes.

Heroku only provides a limited number of free dyno hours per month. The main benefit of a sleeping dyno is that it does not consume free dyno hours. Please ensure you have sufficient free dyno hours to support a 24/7 dyno before using this action.

## Usage

In order to use this action in your workflow, add this file to `.github/workflows/YOURACTION.yml`

```yml
name: Heroku Awake

on:
  schedule:
    - cron: "*/30 * * * *"

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: mikeesto/heroku-awake@1.0.0
        with:
          URL: "" # ADD YOUR HEROKU URL HERE e.g. https://cats.herokuapp.com
```

## License

MIT.
