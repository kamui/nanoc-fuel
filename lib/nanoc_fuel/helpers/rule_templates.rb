module NanocFuel
  module Helpers

    # @author Arnau Siches
    #
    # @version 0.1.0
    # 
    # Provides some helper functions to process Rules.
    module RuleTemplates
      
      # Compiles the content as a set of Nanoc rules. Tries to use the 
      # +rules_dir+ attribute from the Config.yaml.
      # If +rules_dir+ is not defined, it uses +"."+ as a base path.
      # 
      # @example Config.yaml excerpt
      # 
      #   rules_dir: ['lib/rules/**', 'lib/other_rules']
      #
      # @example Rules excerpt
      # 
      #   # Finds any foo.rule in all directories defined in the Config.yaml
      #   load_rules('foo.rule')
      # 
      # @param [String] filepath The file path to load.
      # 
      # @return [Proc]
      def load_templates(templates)
        rule_template_path = 'rule_templates'
        templates.each do |template|
          instance_eval(File.read(File.expand_path("../#{rule_template_path}/#{template}", __FILE__)), template)
        end
      end
    end
  end
end
