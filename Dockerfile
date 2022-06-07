
# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

FROM oracle/glassfish:nightly
COPY ./target/docker.war ${GLASSFISH_HOME}/glassfish/domains/domain1/autodeploy
