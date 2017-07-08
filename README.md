
# API Back-end for [bookmark](https://github.com/djaircarvalho/bookmark)

### headers

```sh
{
  Content-Type: application/json
  Accept: application/json
}
```

### Requests:

#### Creating an user
```sh
{
  method:POST
  uri:signup
  body:{ "user": { "name": "acme" , "email":"acme@example.com", "password":"1234567",  "password_confirmation":"1234567" } }
}
```
#### Getting a jwt token
```sh
{
  method:POST
  uri:authenticate
  body:{"email":"acme@example.com", "password":"1234567"}
}
```
