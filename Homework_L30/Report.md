### Вывод Console out успешной сборки в Jenkins
Started by user Olga
Obtained Homework_L30/Jenkinsfile from git 
https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git
[Pipeline] Start of Pipeline
[Pipeline] node
Running on Jenkins in /var/lib/jenkins/workspace/Homework_L30
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Declarative: Checkout SCM)
[Pipeline] checkout
The recommended git tool is: git
No credentials specified
 > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/Homework_L30/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git # timeout=10
Fetching upstream changes from https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git
 > git --version # timeout=10
 > git --version # 'git version 2.43.0'
 > git fetch --tags --force --progress -- https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision fc588d76e91a7329883a5e07290e5ac629efd6d1 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f fc588d76e91a7329883a5e07290e5ac629efd6d1 # timeout=10
Commit message: "hww30"
 > git rev-list --no-walk efb16a877c1e2c23bf3e1e7f0cdd01f30d6b7b62 # timeout=10
[Pipeline] }
[Pipeline] // stage
[Pipeline] withEnv
[Pipeline] {
[Pipeline] withEnv
[Pipeline] {
[Pipeline] stage
[Pipeline] { (Checkout)
[Pipeline] echo
Клонирование репозитория из https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git...
[Pipeline] git
The recommended git tool is: git
No credentials specified
 > git rev-parse --resolve-git-dir /var/lib/jenkins/workspace/Homework_L30/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git # timeout=10
Fetching upstream changes from https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git
 > git --version # timeout=10
 > git --version # 'git version 2.43.0'
 > git fetch --tags --force --progress -- https://github.com/olgagrishinaqa-netizen/Olga_Grishina_DOS35.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/main^{commit} # timeout=10
Checking out Revision fc588d76e91a7329883a5e07290e5ac629efd6d1 (refs/remotes/origin/main)
 > git config core.sparsecheckout # timeout=10
 > git checkout -f fc588d76e91a7329883a5e07290e5ac629efd6d1 # timeout=10
 > git branch -a -v --no-abbrev # timeout=10
 > git branch -D main # timeout=10
 > git checkout -b main fc588d76e91a7329883a5e07290e5ac629efd6d1 # timeout=10
Commit message: "hww30"
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Build)
[Pipeline] dir
Running in /var/lib/jenkins/workspace/Homework_L30/Homework_L30
[Pipeline] {
[Pipeline] echo
Сборка проекта...
[Pipeline] sh
+ mvn clean package -DskipTests
[[1;34mINFO[m] Scanning for projects...
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m-----------------------< [0;36mcom.example:my-web-app[0;1m >-----------------------[m
[[1;34mINFO[m] [1mBuilding my-web-app 1.0-SNAPSHOT[m
[[1;34mINFO[m] [1m--------------------------------[ jar ]---------------------------------[m
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-clean-plugin:2.5:clean[m [1m(default-clean)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] Deleting /var/lib/jenkins/workspace/Homework_L30/Homework_L30/target
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:2.6:resources[m [1m(default-resources)[m @ [36mmy-web-app[0;1m ---[m
[[1;33mWARNING[m] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[[1;34mINFO[m] skip non existing resourceDirectory /var/lib/jenkins/workspace/Homework_L30/Homework_L30/src/main/resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.1:compile[m [1m(default-compile)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] No sources to compile
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:2.6:testResources[m [1m(default-testResources)[m @ [36mmy-web-app[0;1m ---[m
[[1;33mWARNING[m] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[[1;34mINFO[m] skip non existing resourceDirectory /var/lib/jenkins/workspace/Homework_L30/Homework_L30/src/test/resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.1:testCompile[m [1m(default-testCompile)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] No sources to compile
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-surefire-plugin:2.12.4:test[m [1m(default-test)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] Tests are skipped.
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-jar-plugin:2.4:jar[m [1m(default-jar)[m @ [36mmy-web-app[0;1m ---[m
[[1;33mWARNING[m] JAR will be empty - no content was marked for inclusion!
[[1;34mINFO[m] Building jar: /var/lib/jenkins/workspace/Homework_L30/Homework_L30/target/my-web-app-1.0-SNAPSHOT.jar
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] [1;32mBUILD SUCCESS[m
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] Total time:  1.861 s
[[1;34mINFO[m] Finished at: 2026-07-20T23:00:35+03:00
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[Pipeline] }
[Pipeline] // dir
[Pipeline] }
[Pipeline] // stage
[Pipeline] stage
[Pipeline] { (Test)
[Pipeline] dir
Running in /var/lib/jenkins/workspace/Homework_L30/Homework_L30
[Pipeline] {
[Pipeline] echo
Запуск тестов...
[Pipeline] sh
+ mvn test
[[1;34mINFO[m] Scanning for projects...
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m-----------------------< [0;36mcom.example:my-web-app[0;1m >-----------------------[m
[[1;34mINFO[m] [1mBuilding my-web-app 1.0-SNAPSHOT[m
[[1;34mINFO[m] [1m--------------------------------[ jar ]---------------------------------[m
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:2.6:resources[m [1m(default-resources)[m @ [36mmy-web-app[0;1m ---[m
[[1;33mWARNING[m] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[[1;34mINFO[m] skip non existing resourceDirectory /var/lib/jenkins/workspace/Homework_L30/Homework_L30/src/main/resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.1:compile[m [1m(default-compile)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] No sources to compile
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-resources-plugin:2.6:testResources[m [1m(default-testResources)[m @ [36mmy-web-app[0;1m ---[m
[[1;33mWARNING[m] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[[1;34mINFO[m] skip non existing resourceDirectory /var/lib/jenkins/workspace/Homework_L30/Homework_L30/src/test/resources
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-compiler-plugin:3.1:testCompile[m [1m(default-testCompile)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] No sources to compile
[[1;34mINFO[m] 
[[1;34mINFO[m] [1m--- [0;32mmaven-surefire-plugin:2.12.4:test[m [1m(default-test)[m @ [36mmy-web-app[0;1m ---[m
[[1;34mINFO[m] No tests to run.
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] [1;32mBUILD SUCCESS[m
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
[[1;34mINFO[m] Total time:  0.820 s
[[1;34mINFO[m] Finished at: 2026-07-20T23:00:39+03:00
[[1;34mINFO[m] [1m------------------------------------------------------------------------[m
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