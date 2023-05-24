# frozen_string_literal: true

module BaseConfig

  @environment = ENV['env'] || '8778'
  #     Available options
  #       * beta - runs on the beta environment
  #       * prod - runs on the prod environment
  def self.environment
    @environment
  end

  @wait_time = 20
  def self.wait_time
    @wait_time
  end

  @moderate_wait_time = 10
  def self.moderate_wait_time
    @moderate_wait_time
  end

  @short_wait_time = 5
  def self.short_wait_time
    @short_wait_time
  end

  @long_wait_time = 60
  def self.long_wait_time
    @long_wait_time
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

  @sms_code = [1, 4, 1, 4]
  def self.sms_code
    @sms_code
  end

  @master_pass_verification_code = '123456'
  def self.master_pass_verification_code
    @master_pass_verification_code
  end

  @logging_level = Logger::INFO
  # Available options:
  # * info => Logger::INFO
  # * debug => Logger::DEBUG
  # * error => Logger::ERROR
  def self.logging_level
    @logging_level
  end

  @multi_switch = ENV['multi_switch'] || 'true'
  # Available options:
  # * true => multi features switch on
  # * false => multi features switch off
  def self.multi_switch
    @multi_switch
  end
end
