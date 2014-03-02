require("moonscript")

describe "Destination", ->
  setup ->
    export destination = require("destination")

  teardown ->
    destination = nil

  it "exists", ->
    assert.truthy(destination)

  it "returns the value for keywords", ->
    dest = with Destination!
      .keywords = "Folder Name"
    assert.are.same(dest\keywords_value!, "Folder Name")

  it "accepts a table as the new argument", ->
    keys = {}
    keys['monkey'] = true
    keys['children'] = true
    keys['adults'] = true

    dest = with Destination!
      .keywords = keys

    assert.are.same(dest\keywords_value!, keys)

  it "parses the event names and returns the event hashtag", ->
    keys = {}
    keys['Robots and Vampires'] = true
    keys[' #Family '] = true
    keys['#Mountains'] = true
    dest = with Destination!
      .keywords = keys

    assert.are.same(dest\hashtag!, "Family")
