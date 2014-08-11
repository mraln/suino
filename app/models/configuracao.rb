class Configuracao
  def self.get configuracao
    YAML.load_file(File.join(Rails.root, 'config/controle_suino.yml'))[configuracao]
  end
end