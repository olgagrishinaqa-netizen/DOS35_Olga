### Вывод Console out успешной сборки в Jenkins
Started by user Olga
Obtained Homework_L30/Jenkinsfile from git 
https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git

Клонирование репозитория из https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git...

[Pipeline] }
[Pipeline] // dir
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Docker Build & Cleanup)
[Pipeline] dir
Running in /var/lib/jenkins/workspace/Homework_L30/Homework_L30
[Pipeline] {
[Pipeline] script
[Pipeline] {
[Pipeline] echo
Очистка предыдущей версии контейнера...
[Pipeline] sh
+ docker stop web-app-container
web-app-container
[Pipeline] sh
+ docker rm web-app-container
web-app-container
[Pipeline] echo
Создание нового Docker-образа...
[Pipeline] sh
+ docker build -t my-web-app:latest .
DEPRECATED: The legacy builder is deprecated and will be removed in a future release.
            Install the buildx component to build images with BuildKit:
            https://docs.docker.com/go/buildx/

Sending build context to Docker daemon   12.8kB

Step 1/6 : FROM eclipse-temurin:17-jdk-alpine
 ---> 638937c54b6d
Step 2/6 : WORKDIR /app
 ---> Using cache
 ---> 562151e07f80
Step 3/6 : RUN echo "Hello from DevOps Homework!" > index.html
 ---> Using cache
 ---> 9fe3bd43bcc6
Step 4/6 : RUN apk add --no-cache python3
 ---> Using cache
 ---> 8bf4d4a0eb1b
Step 5/6 : EXPOSE 8080
 ---> Using cache
 ---> e9b566c513c1
Step 6/6 : CMD ["python3", "-m", "http.server", "8080"]
 ---> Using cache
 ---> 506cc299e5f3
Successfully built 506cc299e5f3
Successfully tagged my-web-app:latest
[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // dir
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Deploy)
[Pipeline] script
[Pipeline] {
[Pipeline] echo
Запуск нового Docker-контейнера...
[Pipeline] sh
+ docker run -d --name web-app-container -p 8081:8080 my-web-app:latest
11c21660be01a1c1c806efe6953393f9973d7c11a0593f2b7a994b2e2f9e00e1
[Pipeline] echo
Проверка доступности веб-приложения...
[Pipeline] sh
+ sleep 3
+ curl -I http://localhost:8080
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed

  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
HTTP/1.1 403 Forbidden
Server: Jetty(12.1.8)
Date: Mon, 20 Jul 2026 20:00:45 GMT
X-Content-Type-Options: nosniff
Reporting-Endpoints: content-security-policy: http://localhost:8080/content-security-policy-reporting-endpoint/h-G9vztH-uaGkaiARvJaC5A6qhE0kWx97utdsGP4i5U=:YW5vbnltb3Vz::Lw==
Content-Security-Policy-Report-Only: base-uri 'none'; default-src 'self'; form-action 'self'; frame-ancestors 'self'; img-src 'self' data:; script-src 'report-sample' 'self' usage.jenkins.io; style-src 'report-sample' 'self' 'unsafe-inline'; report-to content-security-policy; report-uri http://localhost:8080/content-security-policy-reporting-endpoint/h-G9vztH-uaGkaiARvJaC5A6qhE0kWx97utdsGP4i5U=:YW5vbnltb3Vz::Lw==
Set-Cookie: JSESSIONID.989c6e6f=node01t3ozf5gme5ugiio54bis502j2.node0; Path=/; HttpOnly; SameSite=Lax
Expires: Thu, 01 Jan 1970 00:00:00 GMT
Content-Type: text/html;charset=utf-8
X-Hudson: 1.395
X-Jenkins: 2.568.1
X-Jenkins-Session: 4cf2812c
X-You-Are-Authenticated-As: anonymous
X-You-Are-In-Group-Disabled: JENKINS-39402: use -Dhudson.security.AccessDeniedException2.REPORT_GROUP_HEADERS=true or use /whoAmI to diagnose
X-Required-Permission: hudson.model.Hudson.Read
X-Permission-Implied-By: hudson.security.Permission.GenericRead
X-Permission-Implied-By: hudson.model.Hudson.Administer
Transfer-Encoding: chunked

[Pipeline] }
[Pipeline] // script
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Declarative: Post Actions)
[Pipeline] echo
Пайплайн успешно завершен!
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // withEnv
[Pipeline] }
[Pipeline] // node
[Pipeline] End of Pipeline
Finished: SUCCESS