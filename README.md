Angular2 Seed
=============

This is based on this [article](https://yakovfain.com/2016/09/01/starting-an-angular-2-rc-6-project/). Original code can be check [here](https://github.com/Farata/angular2typescript/tree/master/chapter2/angular-seed)

To run this code just use [docker](https://www.docker.com/). Please type these command on terminal

```
$ docker build -t angular2-seed .
$ docker run -d -p 3000:3000 --name angular2-seed -v $(pwd):/angular2-seed angular2-seed:latest
```

Then open your browser and type this URL `http://localhost:3000`. You will see message “Loading…” for a second, followed by "**Hello Angular 2!**".
