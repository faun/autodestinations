export class Destination
  @new: (@keywords)

  keywords_value: =>
    @keywords

  hashtag: =>
    for k,v in pairs(@keywords)
      -- trim whitespace
      key = string.gsub(k, "^%s*(.-)%s*$", "%1")
      -- if the key starts with a '#'
      if string.sub(key, 1, 1) == "#"
        -- Return the key without the #hashtag
        return string.sub(key, 2, -1)
    -- Fallback event
    return "Misc Events"

