export class Destination
  @new: (@keywords)

  keywords_value: =>
    @keywords

  hashtag: =>
    for k,v in pairs(@keywords)
      key = self.trim_whitespace(k)
      -- if the key starts with a '#'
      if self.begins_with(key, '#')
        return self.strip_first_character(key)
    -- Fallback event
    return "Misc Events"

  begins_with: (str, char) ->
    string.sub(str, 1, 1) == "#{char}"

  trim_whitespace: (str) ->
    string.gsub(str, "^%s*(.-)%s*$", "%1")

  strip_first_character: (str) ->
    string.sub(str, 2, -1)

