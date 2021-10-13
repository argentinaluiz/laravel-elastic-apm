## Laravel (PHP 8.0) using Elastic APM Extension

To run:

```
docker-compose up
docker-compose exec app bash
php artisan server 0.0.0.0:8000
```

Must be defined other configs in `php-custom.ini` or env vars to connect PHP application with Elastic APM.

