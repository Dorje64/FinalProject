class AddCandidateToVoter < ActiveRecord::Migration
  def change
    add_reference :voters, :candidate, index: true, foreign_key: true
  end
end
