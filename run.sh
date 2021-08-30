docker kill php-fpm-container
docker system prune -f
docker run --rm --name php-fpm-container -d -v $(pwd):/app -p 0.0.0.0:8000:8000 php-fpm php -S 0.0.0.0:8000
