json.extract! payment, :id, :lease_id, :tenant_id, :amount, :paid_on, :created_at, :updated_at
json.url payment_url(payment, format: :json)
