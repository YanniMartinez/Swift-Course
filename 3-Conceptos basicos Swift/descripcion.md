#Conceptos Basicos del lenguaje 

Dentro de swift como cualquier otro lenguaje tenemos diferentes variables, para ello refiere al documento **3-Conceptos Basicos** contenido dentro de esta misma carpeta para familiarizarte con ejemplos que puedes ingresar directamente en un playground para que visualices el contenido.

* Arreglos: En este lenguaje en vez de ser inmutables tienen una caracteristica de ser como las listas en otros lenguajes como python por lo que lo metodos que tienen son muy similares.

    Dentro de Swift podemos declara y an'adir contenido a un arreglo de la siguiente manera 

    ```
        var names = ["Amy"]
        names.append("Joe")
        names += ["Keith", "Jane"]

    ```

    En este caso para agregar elementos en una posicion especifica podemos hacer uso de la siguiente sentencia:

    `names.insert("Bob", at: 0)`

    Igual aplica con los elementos remove y removeAll y removeLast.

    Para realizar una actualizacion en el diccionrio podemos optar por las siguiente sentencia
    let oldValue = scores.updateValue(100, forKey: "Richard")



* Diccionarios:

