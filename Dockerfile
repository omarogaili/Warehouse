# baseimage 
FROM node:18-bullseye

RUN apt-get update && apt-get install -y build-essential 

# Create app directory
WORKDIR /usr/src/app

# Copy both projects in the container
COPY ./cargo-house ./cargo-house
COPY ./cargo-house-user-panel ./cargo-house-user-panel

# Install TypeScript
RUN npm install -g typescript

# Build TypeScript
WORKDIR /usr/src/app/cargo-house-user-panel
RUN tsc

CMD [ "bash" ]

