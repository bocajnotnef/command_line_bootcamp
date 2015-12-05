# SSH Bootcamp

Learn the unix command-line (and other useful remote things) by using it in your browser.

Originally from https://github.com/blahah/command_line_bootcamp

## Build and Deploy

I've modified the original repo somewhat so as to easily deploy/run this on a server--Useful for
workshops, etc.

You'll need an ubuntu machine with Docker, git, node, apache2, cmake, g++ and build-essential
installed.

SSH into your box and do the following:

```
git clone https://github.com/bocajnotnef/command_line_bootcamp
bash command_line_bootcamp/init.sh
```

### cleaning up long-running containers

Sometimes people leave their browser windows open for a really long time. If you don't want to fund the docker container running for that time, you can clean up long-running containers:

```bash
docker stop $(docker ps | grep hours | cut -d ' ' -f1 | paste - - - - )
```
