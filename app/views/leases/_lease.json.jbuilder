json.extract! lease, :id, :unit_id, :tenant_id, :price, :duration, :due_day, :active, :created_at, :updated_at
json.url lease_url(lease, format: :json)
