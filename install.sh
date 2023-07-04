if [ -n `which java` ]; then
  mkdir ./server
  cd ./server
  curl https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar -o server.jar
  cat > eula.txt
  echo 'eula=true' > eula.txt
  java -jar server.jar
else
  sudo apt-get install openjdk-8-jdk
  mkdir ./server
  cd ./server
  curl https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar -o server.jar
  cat > eula.txt
  echo 'eula=true' > eula.txt
  java -jar server.jar
fi
