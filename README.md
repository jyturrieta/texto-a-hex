# texto-a-hex

## Función que computa

La funcion de esta máquina de Turing es convertir un texto en su representación hexadecimal. Para ello, se tomará como referencia para cada caracter su valor en ASCII, y se convertirá a hexadecimal.
La máquina de Turing tiene un alfabeto de entrada que incluye letras minúsculas y números.

## Estrategia de diseño
La máquina de Turing se diseñará para leer un texto de izquierda a derecha, convirtiendo cada caracter a su representación hexadecimal y escribiéndolo en la cinta. La máquina tendrá un estado inicial y un estado de aceptación. Para ello, es necesario para su correcto funcionamiento utilizar el caracter # como delimitador de fin de cadena. La máquina comenzará en el estado inicial y leerá el primer caracter del texto. Luego, convertirá el caracter a su representación hexadecimal y lo escribirá en la cinta. La máquina continuará leyendo y convirtiendo caracteres hasta que llegue al final del texto. Una vez que haya convertido todos los caracteres, la máquina se moverá al estado de aceptación, borrando el caracter # de la cinta. 

### Limitaciones

- La máquina de Turing no podrá manejar caracteres especiales o espacios en blanco en el simulador, debido a una limitación del mismo. 
- Solo se aceptarán letras minúsculas y números. 
- Si se encuentra un caracter no válido, la máquina se detendrá y no producirá una salida válida.
- Se debe utilizar el caracter # como delimitador de fin de cadena. Por ejemplo:
    - Entrada: "unahur#"
    - Salida: "686f6c61"



## Formalismo

- q: {q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31, q32, q33, q34, q35, q36, q37, q38, q39, q40, q41, q42, q43, q44,q45,q46,q47, q48, q49, q50, q51, q52, q53, q54, q55}
- Σ: {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, #}
- Γ: {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, #, _} *(Aclaración: el caracter _ es $ en el simulador)* 
- q0: q0
- qA: {q55}
- δ: 
  
## Diseño JFLAP

![Diagrama de la máquina de Turing](/resources/jflap-texto-hex.png)

Archivo JFLAP: [texto-a-hex.jff]()


## Simulador

Link al simulador: [turingmachinesimulator.com/shared/qhmguggqgp](https://turingmachinesimulator.com/shared/qhmguggqgp)

Archivo de entrada: [textoahex.mt]()

## Complejidad

### Inputs

| Entrada | Salida | Movimientos | Diferencia | Espacios |
| ------- | ------ | ----------- | ------ | -------- |
| u# | 75 | 16 | - | 
| un# | 756e | 43 | +27 | 
| una# | 756e61 | 82 | +39 |
| unah# | 756e6168 | 133 | +51 |
| unahu# | 756e616875 | 196 | +63 |
| unahur# | 756e61687572 | 271 | +75 |
| unahur2# | 756e6168757232 | 358 | +87 |
| unahur20# | 756e616875723233 | 457 | +99 |
| unahur202# | 756e61687572323332 | 568 | +111 |
| unahur2025# | 756e6168757232333235 | 691 | +123 |


### Complejidad temporal

La complejidad temporal de la máquina de Turing es O(n^2), donde n es el número de caracteres en la cadena de entrada. Esto se debe a que la máquina de Turing tiene que recorrer la cadena de entrada y convertir cada caracter a su representación hexadecimal, lo que implica un tiempo lineal para cada caracter. Sin embargo, como la máquina de Turing tiene que mover la cabeza hacia atrás y hacia adelante en la cinta para escribir el resultado, esto añade un factor adicional de O(n) al tiempo total.

(es una cuadratica)

### Complejidad espacial

La complejidad espacial de la máquina de Turing es O(n), donde n es el número de caracteres en la cadena de entrada. Esto se debe a que la máquina de Turing tiene que almacenar la cadena de entrada y su representación hexadecimal en la cinta, lo que requiere espacio lineal en función del tamaño de la entrada. Sin embargo, como la máquina de Turing tiene que mover la cabeza hacia atrás y hacia adelante en la cinta para escribir el resultado, esto añade un factor adicional de O(n) al espacio total.
