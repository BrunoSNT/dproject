json.extract! review, :id, :client_id, :rating, :user_review, :created_at, :updated_at
json.url review_url(review, format: :json)
