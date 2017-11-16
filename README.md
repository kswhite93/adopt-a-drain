# Adopt-a-Drain

[![Join the chat at https://gitter.im/sfbrigade/adopt-a-drain](https://badges.gitter.im/sfbrigade/adopt-a-drain.svg)](https://gitter.im/sfbrigade/adopt-a-drain?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Build Status](http://img.shields.io/travis/sfbrigade/adopt-a-drain.svg)][travis]
[![Dependency Status](http://img.shields.io/gemnasium/sfbrigade/adopt-a-drain.svg)][gemnasium]
[![Coverage Status](http://img.shields.io/coveralls/sfbrigade/adopt-a-drain.svg)][coveralls]

[travis]: http://travis-ci.org/sfbrigade/adopt-a-drain
[gemnasium]: https://gemnasium.com/sfbrigade/adopt-a-drain
[coveralls]: https://coveralls.io/r/sfbrigade/adopt-a-drain

Claim responsibility for cleaning out a storm drain after it rains.

## Screenshot
![Adopt-a-Drain](/adopt.png "Adopt-a-Drain")

## Demo
You can see a running version of the application at
[http://adopt-a-drain.herokuapp.com/][demo].

[demo]: http://adopt-a-drain.herokuapp.com/


## Docker (our prefered dev and test setup)

1. To install Docker locally, pick your OS and follow steps here:
[Docker Store](https://store.docker.com/search?offering=community&type=edition)
1. `git clone` this repository, and `cd` to it in your shell
1. build the adopta image locally, this will take a few min
    ```bash
    docker-compose build
    ```
1. Setup your docker based postgres database (first time):
   ```bash
   docker-compose run --rm web bundle exec rake db:schema:load
   ```
1. Load data (first time):
   ```bash
   docker-compose run --rm web bundle exec rake data:load_things
   ```
1. Start the web server:
   ```bash
   docker-compose up
   ```
      ProTip: use `docker-compose up -d` to run these containers in the background

1. Visit your website http://localhost:3000 (or the IP of your docker-machine if on Win7/8/10Home)

## Installation without Docker (No recommended unless you're already a Ruby developer that doesn't want Docker)

This application requires [Postgres](http://www.postgresql.org/) and Ruby to be installed

    git clone git://github.com/code4hr/adopt-a-drain.git
    cd adopt-a-drain
    bundle install

    bundle exec rake db:schema:load
    bundle exec rake data:load_things

    rails server

## Contributing
In the spirit of [free software][free-sw], **everyone** is encouraged to help
improve this project.

[free-sw]: http://www.fsf.org/licensing/essays/free-sw.html

Here are some ways *you* can contribute:

* by using alpha, beta, and prerelease versions
* by reporting bugs
* by suggesting new features
* by [translating to a new language][locales]
* by writing or editing documentation
* by writing specifications
* by writing code (**no patch is too small**: fix typos, add comments, clean up
  inconsistent whitespace)
* by refactoring code
* by closing [issues][]
* by reviewing patches

[locales]: https://github.com/code4hr/adopt-a-drain/tree/master/config/locales
[issues]: https://github.com/code4hr/adopt-a-drain/issues

## Submitting an Issue
We use the [GitHub issue tracker][issues] to track bugs and features. Before
submitting a bug report or feature request, check to make sure it hasn't
already been submitted. When submitting a bug report, please include a [Gist][]
that includes a stack trace and any details that may be necessary to reproduce
the bug, including your gem version, Ruby version, and operating system.
Ideally, a bug report should include a pull request with failing specs.

[gist]: https://gist.github.com/

## Submitting a Pull Request
1. [Fork the repository.][fork]
2. [Create a topic branch.][branch]
3. Add specs for your unimplemented feature or bug fix.
4. Run `bundle exec rake test`. If your specs pass, return to step 3.
5. Implement your feature or bug fix.
6. Run `bundle exec rake test`. If your specs fail, return to step 5.
7. Run `open coverage/index.html`. If your changes are not completely covered
   by your tests, return to step 3.
8. Add, commit, and push your changes.
9. [Submit a pull request.][pr]

[fork]: http://help.github.com/fork-a-repo/
[branch]: https://guides.github.com/introduction/flow/
[pr]: http://help.github.com/send-pull-requests/

## Copyright
Copyright (c) 2017 Code for Hampton Roads. See [LICENSE.md](https://github.com/code4hr/adopt-a-drain/blob/master/LICENSE.md) for details.

[license]: https://github.com/code4hr/adopt-a-drain/blob/master/LICENSE.md
