require 'httparty'

DOMAIN = 'http://localhost:4567/'
HEADERS = {'Accept' => 'application/json'}

class UPaste
  include HTTParty

  def initialize(name="")
    self.name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def get(name=@name)
    r = HTTParty.get(DOMAIN + name, headers: HEADERS)
    r.parsed_response
  end

  def paste(*p)
    return unless p.length
    name, paste = p.length == 1 ? [@name, p.first] : p
    r = HTTParty.post(DOMAIN + name, query: {paste: paste}, headers: HEADERS)
    r.parsed_response
  end

end
