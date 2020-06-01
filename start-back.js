const readline = require('readline')
const fs = require('fs')

const dir = process.cwd()

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

const configs = {
  "version": "1.0.0",
  "author": "Andrécio Bezerra <andreciobezerra@gmail.com>",
  "license": "MIT",
  "main": "index.js",
  "jest": {
    "testEnvironment": "node",
    "collectCoverage": true,
    "collectCoverageFrom": [
      "**/routes.js**",
      "**/src/controllers/*.{js,jsx}**",
      "**/src/models/*.{js,jsx}**"
    ],
    "coverageReporters": [
      "json",
      "lcov",
      "text-summary",
      "text",
      "clover"
    ],
    "noStackTrace": true,
    "silent": true,
    "verbose": true
  },
  "scripts": {
    "start": "node src/server.js",
    "dev": "nodemon src/server.js ",
    "test": "jest"
  },
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "body-parser": "^1.19.0",
    "cors": "^2.8.5",
    "dotenv": "^8.2.0",
    "express": "^4.17.1",
    "express-validator": "^6.5.0",
    "mongoose": "^5.9.15",
    "morgan": "^1.10.0"
  },
  "devDependencies": {
    "eslint": "^7.1.0",
    "jest": "^26.0.1",
    "mongodb-memory-server": "^6.6.1",
    "nodemon": "^2.0.4",
    "supertest": "^4.0.2"
  }
}

rl.question('name:', (name) => {
  rl.question('description:', (description) => {
    fs.writeFile('package.json', JSON.stringify({ name, description, ...configs }), (err) => {
      if (err) {
        console.error(err)
        process.exit(0)
      }
      rl.close()
      console.log(`\nFile ${dir}package.json created.`)
      console.log(`Installing packages...`)
      fs.mkdir(`${dir}/src`, () => console.log('Folder src created'))
      fs.mkdir(`${dir}/src/models`, () => console.log('Folder src/models created'))
      fs.mkdir(`${dir}/src/controllers`, () => console.log('Folder src/controllers created'))
      fs.mkdir(`${dir}/src/tests`, () => console.log('Folder src/tests created'))
      fs.mkdir(`${dir}/src/configs`, () => console.log('Folder src/configs created'))
      fs.writeFile(`${dir}/src/server.js`, '', () => console.log('Server file created'))
      fs.writeFile(`${dir}/src/routes.js`, '', () => console.log('Routes file created'))
      fs.writeFile(`${dir}/.env.js`, '', () => console.log('File .env created'))
    })
  })
})


