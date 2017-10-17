require 'jwt'

class Authauth
  
  @algorithm =  ENV['AUTH_ALGORITHM']
  @auth_secret = ENV['AUTH_SECRET']
  
  def self.issue(payload)
    JWT.encode(
      payload,
      @auth_secret,
      @algorithm)
  end
  
  def self.decode(token)
    JWT.decode(token, 
      @auth_secret, 
      true, 
      { algorithm: @algorithm }).first
  end
 
end  