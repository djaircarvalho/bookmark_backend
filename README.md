# README

## API

###headers

{
  Content-Type: application/json
  Accept: application/json
}

###requests:

####creating a user
{
  method:POST
  uri:signup
  body:{ "user": { "name": "acme" , "email":"acme@example.com", "password":"1234567",  "password_confirmation":"1234567" } }
}
####getting a jwt token
{
  method:POST
  uri:authenticate
  body:{"email":"djair@example.com", "password":"1234567"}
}
