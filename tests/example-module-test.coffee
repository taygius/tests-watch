module = require '../example-module'

exports.example_tests =
    setUp : (callback) ->
        # do nothing
        callback()

    tearDown: (callback) -> 
        # do nothing
        callback()

    test1: (test) ->
        test.equal module.fn(1), 1
        test.done()

    test2: (test) ->
        test.equal module.fn(2), 4
        test.done()

    test3: (test) ->
        test.equal module.fn(3), 9
        test.done()