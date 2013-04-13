require "easy_env/version"

module EasyEnv
end

ENV.instance_eval do
  def method_missing(method_name, *args, &block)
    key       = method_name.to_s.upcase
    is_setter = false

    if key[-1] == "="
      is_setter = true
      key = key[0...-1]
    end

    if is_setter
      ENV[key] = args.first
    else
      if has_key?(key)
        ENV[key]
      else
        nil
      end
    end
  end

  def respond_to?(method_name)
    has_key?(method_name.to_s.upcase)
  end
end
