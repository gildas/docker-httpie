# docker-httpie

This container runs the [HTTPie](https://httpie.org) CLI tool.

Example:  
```console
docker run --rm -t gildas/httpie GET https://jsonplaceholder.typicode.com/todos/1
```

Writing a POST:  
```console
docker run --rm -t gildas/httpie POST https://jsonplaceholder.typicode.com/todos userId:=1 title="Do this" body="From a container"
```

Now, if you need to access your localhost, on Docker Linux:  
```console
docker run --rm -t --network host gildas/httpie GET http://127.0.0.1:3000/todos
```
On MacOS and Windows:  
```console
docker run --rm -t gildas/httpie GET http://host.docker.internal:3000/todos
```


To get [HTTPie](https://httpie.org)'s help:  
```console
docker run --rm -it gildas/httpie --help
```
