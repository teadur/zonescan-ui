json.extract! result, :id, :name, :time, :http_code, :dns, :https, :runid, :status, :created_at, :updated_at
json.url result_url(result, format: :json)
