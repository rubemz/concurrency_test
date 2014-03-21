concurrency_test
================

Run ruby boom.rb. It has a great chance of raising an error in sprockets/cache/file_store.rb. If does not, try a couple of times more :D
So, it shows that the current sprockets file_store is broken for multi processes.

After seeing the errors, remove the comments in boom.rb, that will require the bundler/setup, that will require the sprockets with the fix (atomic write).
