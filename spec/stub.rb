class MoshimoshiStub
  include Rails::Moshimoshi::Helper

  def moshimoshi_tag
    greetings = YAML.load_file('greetings.yml')
    return greetings.sample
  end
end