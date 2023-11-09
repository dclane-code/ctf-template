## template for simple CTF challenge
(not perfect but the gist works)

### build

```
docker build -t challenge .
```

### run

```
docker run -dp 127.0.0.1:1337:1337 challenge
```

### use

```
nc localhost 1337
```




