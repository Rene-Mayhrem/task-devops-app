#? Using node js version 14 ---> from docker hub (pulling image)
FROM node:14

#? Set /app as working directory in the container
WORKDIR /app 

#? Copy the package.json file from the machine to the /app folder in the container
COPY package.json . 

#? Installing all the dependencies
RUN npm install

# ? Copy all source code to run the application
COPY . .

#? Build the application
RUN npm run build 

EXPOSE 3000 

#? Run the application
CMD [ "npm", "start" ]