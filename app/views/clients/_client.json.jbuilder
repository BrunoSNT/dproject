json.extract! client, :id, :first_name, :last_name, :first_nickname, :last_nickname, :email, :phone, :cell_phone, :birthday, :cpf, :rg, :created_at, :updated_at
json.url client_url(client, format: :json)
