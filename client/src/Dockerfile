# Use a lighter version of Node as a parent image
FROM mhart/alpine-node:14.3.0
# Set the working directory to /client
WORKDIR /client
# copy package.json into the container at /client
COPY package*.json /client/
# install dependencies
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
# Copy the current directory contents into the container at /client
COPY . /client/
# Run the app when the container launches
CMD ["npm", "start"]