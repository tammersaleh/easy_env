require "easy_env/version"

module EasyEnv
end

ENV.instance_eval do
  def method_missing(method_name, *args, &block)
    key = method_name.to_s
    if has_key?(key.upcase)
      ENV[key.upcase]
    else
      nil
    end
  end

  def respond_to?(method_name)
    has_key?(method_name.to_s.upcase)
  end
end
