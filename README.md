concurrency_test
================

Run ruby boom.rb. It has a great chance of raising an error in sprockets/cache/file_store.rb. If does not, try a couple of times more :D
So, it shows that the current sprockets file_store is broken for multi processes.

After seeing the errors, remove the comments in Gemfile for the sprockets gem pointing to https://github.com/rubemz/sprockets/tree/fix/atomic-write and comment ```gem \'sprockets\'''', bundle it again and run boom. It should not fail anymore.
