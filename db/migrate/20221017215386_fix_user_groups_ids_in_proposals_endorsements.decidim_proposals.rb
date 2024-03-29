# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20181003074440)

class FixUserGroupsIdsInProposalsEndorsements < ActiveRecord::Migration[5.2]
  class ProposalEndorsement < ApplicationRecord
    self.table_name = :decidim_proposals_proposal_endorsements
  end

  def change
    Decidim::UserGroup.find_each do |group|
      old_id = group.extended_data["old_user_group_id"]
      next unless old_id

      Decidim::Proposals::ProposalEndorsement
        .where(decidim_user_group_id: old_id)
        .update_all(decidim_user_group_id: group.id)
    end
  end
end
