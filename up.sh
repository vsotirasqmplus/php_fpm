docker-compose up -d
docker exec fpm_web_1 bash -c 'rm /var/log/nginx/error.log; service nginx reload'
gio open http://localhost:8080/index.php &
docker exec fpm_web_1 bash -c 'tail -c 20  /var/log/nginx/error.log'

