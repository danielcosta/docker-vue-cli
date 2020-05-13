# About

This container has all the items necessary to run the vue-cli.

# Using this container

```
docker run -it --rm -v ${PWD}:${PWD} -w ${PWD} -u `id -u`:`id -g` daccbr/vue-cli vue
```

You can also add an alis in your .bashrc, .zshrc, or similar file for easy access to the command:

```
alias vue='docker run -it --rm -v "$PWD":"$PWD" -w "$PWD"  -u "$(id -u)" daccbr/vue-cli vue'
```

Now you can simply run `vue` on your terminal.


Using this via docker-compose:

```
version: '3'
services:
  web:
    image: daccbr/vue-cli
    command: npm run dev
    volumes:
      - .:/workspace
    ports:
      - "8080:8080"
```

