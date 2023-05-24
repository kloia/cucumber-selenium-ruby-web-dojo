# frozen_string_literal: true

module BaseConfig

  @environment = ENV['env'] || '8778'
  #     Available options
  #       * 8778 - runs on the 8778 environment
  #       * 8678 - runs on the 8678 environment
  def self.environment
    @environment
  end

  case @environment
  when '8778'
    @url = 'https://10.101.25.145:8778/edys-web'
  when '8578'
    @url = 'https://10.101.25.145:8578/edys-web'
  when '8678'
    @url = 'https://10.101.25.145:8678/edys-web'
  else
    raise 'Invalid environment!'
  end

  def self.base_url
    @url
  end

  @browser = ENV['browser'] || 'chrome'
  #     Available options
  #       * chrome
  #       * firefox
  def self.browser
    @browser
  end

  @headless = ENV['headless'] || 'false'
  # Available options
  #   * 'false'
  #   * 'true'
  def self.headless
    @headless
  end

end
