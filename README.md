## What is this?

This is a Typescript Express.js NodeJS application with Jenkins, eslint, prettier and husky configurations for quick bootstrapping.

## Ready to mod it to your needs?

First, get it from the source:

```bash
git clone https://github.com/charlescaseymartin/ts-express.git
```

Then, run the development server:

```bash
npm run dev
```

Open [http://localhost:8000](http://localhost:8000)
with your browser to see the result.\
You can start editing the server by modifying `./src/index.ts`

## Need it contained?

I`ve got you!

Build the image from source:

```bash
docker build -t ts-express-app .
```

Then run the create a container from it:

```bash
docker run --rm -dp 3000:3000 ts-express-app
```

## Thanks for stopping by!

Enjoy this easy-of-life boilerplate template and happy hacking!
