json.array!(@invites) do |invite|
  json.extract! invite, :id, :name, :email, :activity
  json.url invite_url(invite, format: :json)
end
