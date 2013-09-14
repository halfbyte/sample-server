# Sample Server for liv3c0der

See [liv3c0der](https://github.com/liv3c0der).

## Setting it up

If you're on a Mac or Linux with a properly installed Ruby, you should be able to install it with these steps:

    $ sudo gem install bundler
    $ bundle install

If you have a ruby version manager installed, it should work to only bundle. I've set the requirements to Ruby 2.0 in the .ruby-version file, but this is just lazyness, it works fine on Ruby 1.8.7+


## Running it

$ ruby app.rb <sample-directory>

Just point it to a directory/folder with sanely-named samples. Please not the following things:

* It will serve the samples with the filename excluding the extension as the name, so prevent duplications with different extensions
* You need to make sure that your browser can decode the filetype. plain WAV files usually work best across browsers
* If you want property style access (LC.S.t_base vs. LC.S['t_base']), you need to use sane filenames with property compatible names. So t_base.wav is fine, dub-snare.wav is not.

