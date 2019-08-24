case Rails.env
when 'production'
  Rails.application.config.hosts += %w(
  liswu.me
  duan.liswu.me
  
  )
when 'development'
  Rails.application.config.hosts += %w(
    liswu.test
    duan.liswu.test
  )
end

