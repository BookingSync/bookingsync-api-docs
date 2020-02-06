# BookingSync API Docs

## Installation

Just run `bundle install`.

## Development

Running `bundle exec guard` will start a guard server that automatically
recompiles the page on changes. If you have LiveReload enabled in the
browser, it will be turned on too.

This works best with pow.

If you are having issues with `guard`, just use `nanoc compile` and `nanoc view`.
The `crash.log` could provide useful information as well.
If you see the `json` examples not changing, just delete the output folder and regenerate it with `nanoc compile`.

## Publishing

Make sure to be on the master branch and having pulled the latest changes, then run `bundle exec rake publish` from your local machine.

You will need to wait few minutes before the changes are live on the documentation side.
