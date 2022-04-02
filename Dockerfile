ARG NODE_VERSION=14
FROM node:${NODE_VERSION}

# Home directory for the application source code
ENV WORK_DIR=/usr/src
WORKDIR ${WORK_DIR}

# Update OS & install Debian packages
RUN apt-get update && apt-get install -y --no-install-recommends nano tree

# Copies the package.json first for better cache on later pushes
COPY package.json .
RUN npm install

# Copy the code of the application, including the build bundle (./dist folder)
COPY . .

CMD ["npm", "start"]