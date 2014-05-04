#!/usr/bin/env bash

rm -rf artifactory-3.2.0
unzip artifactory-3.2.0.zip
cp configuration-files/ROOT.xml artifactory-3.2.0/tomcat/conf/Catalina/localhost
cp configuration-files/server.xml artifactory-3.2.0/tomcat/conf
cp configuration-files/index.html artifactory-3.2.0/tomcat/webapps/ROOT
mv artifactory-3.2.0/tomcat/conf/Catalina/localhost/artifactory.{xml,xml.backup}
mv artifactory-3.2.0/webapps/{artifactory,ROOT}.war
artifactory-3.2.0/bin/artifactory.sh

