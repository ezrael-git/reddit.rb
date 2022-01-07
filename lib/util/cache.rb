# cache.rb
# > back


class Cache
  attr_accessor :type
  attr_accessor :type_int
  attr_accessor :cache
  attr_accessor :label

  def initialize (label: nil, type: "list", discard: false, discard_time: 0)
  """
  Arguments:
    label (string) : the name of the cache
    type (string) : the type of the cache
    discard (boolean) : whether to discard items
    discard_time (integer) : after which the items will be discarded if not used
  """

  @label = label
  @type = type
  @type_int = if type == "list" then 0 else 1 end
  @discard = discard
  @discard_time = discard_time
  
  @cache = if type == "list" then [] else {} end
  
  end

  def add (key, item=nil)
    if type_int == 0:
      @cache.append key
    else
      @cache[key] = item
    end
    
  end

  def remove (key)
    @cache.delete(key)
  end




end
