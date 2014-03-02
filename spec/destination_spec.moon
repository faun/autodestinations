require("busted")
require("moonscript")

package.path = "../src/?.lua;" .. package.path

describe "Destination", ->
  setup ->
    export destination = require("destination")

  teardown ->
    destination = nil

  it "exists", ->
    assert.truthy(destination)

  it "returns the value for keywords", ->
    things = with Destination!
      .keywords = "Folder Name"
    assert.are.same(things\keywords_value!, "Folder Name")

  it "accepts a table as the new argument", ->
    keys = {}
    keys['monkey'] = true
    keys['children'] = true
    keys['adults'] = true

    things = with Destination!
      .keywords = keys

    assert.are.same(things\keywords_value!, keys)
