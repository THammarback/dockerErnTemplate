# Use a lighter version of Node as a parent image
FROM mhart/alpine-node:14.3.0
# Set the working directory to /api
WORKDIR /server
# copy package.json into the container at /server
COPY package*.json /server/
# install dependencies
RUN npm install
# Copy the current directory contents into the container at /server
COPY . /server/
# install docker-compose-wait
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
RUN chmod +x /wait
# Run the app when the container launches
CMD /wait && npm run start-dev
