# Devgem

Devgem bundles and installs your under development gem so that you don't have to mess around with paths or bundling/installing everytime you make a change.

## Installation

Install the gem:

    $ gem install devgem

## Usage

After installing, navigate to your gem directory and run the command: `devgem`

To remove the symlink, simply run `devgem delete` from the gem directory. You might need to `gem uninstall` your gem as well to clean up.

## What does it really do

Devgem basically registers your gem as you would normally the first time, via bundle and rake install. It then removes the added source under $GEM_HOME/gems and creates a symlink that points to the current dir again, so your latest version is always there.

Devgem does a few things

1. Only works with v0.0.1 (initial development release) (TODO: update to use latest release)
2. Uses $GEM_HOME as the directory of your gem home, and assumes your gems are under /gems/ (typical rvm setup)
3. Works with only the current dir gem setup (TODO: accept arguments to change this)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/devgem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
