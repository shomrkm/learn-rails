json.extract! usr, :id, :name, :portrait, :created_at, :updated_at
json.url usr_url(usr, format: :json)
json.portrait url_for(usr.portrait)
