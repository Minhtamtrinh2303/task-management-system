json.extract! team_membership, :id, :team_id, :account_id, :created_at, :updated_at
json.url team_membership_url(team_membership, format: :json)
