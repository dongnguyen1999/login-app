# Updated to Spring Boot 3 and Spring Security 8
registration-login-module using springboot, spring mvc, spring security and thymeleaf

http://www.javaguides.net/2018/10/user-registration-module-using-springboot-springmvc-springsecurity-hibernate5-thymeleaf-mysql.html

How to deploy

Build image
```
docker build --platform linux/amd64 -t login-app .
```

Run image
```
docker compose up
```