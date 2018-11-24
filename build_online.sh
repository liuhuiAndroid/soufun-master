mvn install:install-file -Dfile=./lib/aliyun-java-sdk-core-3.2.3.jar -DgroupId=com.aliyun -DartifactId=aliyun-java-sdk-core -Dversion=3.2.3

mvn install:install-file -Dfile=./lib/aliyun-java-sdk-dysmsapi-1.0.0.jar -DgroupId=com.aliyun -DartifactId=aliyun-java-sdk-dysmsapi -Dversion=1.0.0

mvn clean package -Dmaven.test.skip=true