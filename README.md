# golang-tdd-example

## running the go programs

```
go run program.go
```

## running the go tests

On the first time you run the go tests, you could use this

```
go test
```

and you would get this output

```
go: cannot find main module, but found .git/config in /workspaces/golang-tdd-example
        to create a module there, run:
        go mod init
```

so lets run that 

```
go mod init github.com/aaronaddleman/golang-tdd-example
```

now we can run the tests

```
go test
```
