task :reload_db => ['db:drop', 'db:create', 'db:migrate', 'db:seed']