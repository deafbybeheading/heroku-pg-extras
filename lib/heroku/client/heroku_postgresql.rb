class Heroku::Client::HerokuPostgresql
  def upgrade
    http_post "#{resource_name}/upgrade"
  end

  def changeover(time)
    http_post "#{resource_name}/changeover", { "at" => time }
  end

  def upgrade_status
    http_get "#{resource_name}/upgrade_status"
  end
end
