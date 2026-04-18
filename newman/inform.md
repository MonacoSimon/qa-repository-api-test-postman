## informe prueba con Newman

- coleccion de pruebas corrida con el software newman por cli. el resultado de las
pruebas es el siguiente:

┌─────────────────────────┬─────────────────────┬────────────────────┐
│                         │            executed │             failed │
├─────────────────────────┼─────────────────────┼────────────────────┤
│              iterations │                   1 │                  0 │
├─────────────────────────┼─────────────────────┼────────────────────┤
│                requests │                  19 │                  0 │
├─────────────────────────┼─────────────────────┼────────────────────┤
│            test-scripts │                  19 │                  0 │
├─────────────────────────┼─────────────────────┼────────────────────┤
│      prerequest-scripts │                   0 │                  0 │
├─────────────────────────┼─────────────────────┼────────────────────┤
│              assertions │                  75 │                  1 │
├─────────────────────────┴─────────────────────┴────────────────────┤
│ total run duration: 26s                                            │
├────────────────────────────────────────────────────────────────────┤
│ total data received: 117.03kB (approx)                             │
├────────────────────────────────────────────────────────────────────┤
│ average response time: 1345ms [min: 329ms, max: 14.6s, s.d.: 3.1s] │
└────────────────────────────────────────────────────────────────────┘


- se corrieron en total 75 pruebas sobre la pagina y dio un resultado de:
- tiempo de ejecucion: 26 seg
- corridos con exito: 75
- corridos con algun error: 1

la pagina de prueba fue:

[https://dummyjson.com](pagina de prueba)
