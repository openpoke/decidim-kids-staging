# frozen_string_literal: true

# This migration comes from decidim_templates (originally 20221006055954)

class AddFieldValuesAndTargetToDecidimTemplates < ActiveRecord::Migration[6.0]
  class Template < ApplicationRecord
    self.table_name = :decidim_templates_templates
  end

  def change
    add_column :decidim_templates_templates, :field_values, :json, default: {}
    add_column :decidim_templates_templates, :target, :string

    reversible do |direction|
      direction.up do
        Template.where(templatable_type: "Decidim::Forms::Questionnaire").update_all(target: "questionnaire")
        Template.where(templatable_type: "Decidim::Organization").update_all(target: "user_block")
      end
    end
  end
end
