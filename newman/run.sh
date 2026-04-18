#!/bin/bash


newman run ../postman/collections/coleccion\ pruebas\ ReqRes.postman_collection.json -e ../postman/enviroment/enviroment\ ReqRes.postman_environment.json --env-var "UrlBase=https://dummyjson.com" -r cli,html --reporter-html-export report.html


