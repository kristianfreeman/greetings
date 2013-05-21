class GreetingsStub
  include Rails::Greetings::Helper

  def greetings_tag
    greetings = YAML.load_file('greetings.yml')
    return greetings.sample
  end
end