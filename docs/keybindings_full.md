## Atajos de Teclado Personalizados

| Atajo            | Acción                                                                        |
| :--------------- | :---------------------------------------------------------------------------- |
| `<leader>ot`     | Alterna entre diferentes estilos del tema Onedark.                            |
| `<localleader>l` | Abre una ventana flotante de lazygit para ver el historial de Git del plugin. |
| `<localleader>t` | Abre una ventana flotante de terminal en el directorio del plugin.            |

**Nota:** `<leader>` generalmente se configura como la barra espaciadora (` `). `<localleader>` también es personalizable y puede tener un valor diferente.

### Atajos de Teclado en la Interfaz de Depuración (dapui)

`<CR>` Expandir/Contraer

`<2-LeftMouse>` Expandir/Contraer

`o` Abrir

`d` Eliminar

`e` Editar

`r` REPL

`t` Alternar

`q`, `<Esc>` Cerrar (en ventana flotante)


`<M-s>` `<alt-s>`

Activa el fast wrap para los caracteres configurados `{`, `[`, `(`, `"`, `'`


`gc` Comentar/descomentar un párrafo (textobjeto)

`gcc` Comentar/descomentar la línea actual

`gc` (modo visual) Comentar/descomentar la selección

`gsa` Agregar un entorno alrededor del texto seleccionado o el cursor.

`gsd` Eliminar el entorno que rodea al texto seleccionado o el cursor.

`gsf` Buscar el siguiente entorno y mover el cursor al final del mismo.

`gsF` Buscar el entorno anterior y mover el cursor al inicio del mismo.

`gsh` Resaltar el entorno que rodea al texto seleccionado o el cursor.

`gsr` Reemplazar el entorno que rodea al texto seleccionado o el cursor.

`gsnl` Buscar el último entorno y actualizar el número de líneas a incluir.

`gsnn`  Buscar el siguiente entorno y actualizar el número de líneas a incluir.

`ao` Selecciona alrededor de un bloque de código (función, condicional, bucle), clase, o etiqueta HTML.

`ai` Selecciona dentro de un bloque de código (función, condicional, bucle), clase, o etiqueta HTML.

`af` Selecciona alrededor de una función.

`ai` Selecciona dentro de una función.

`ac` Selecciona alrededor de una clase.

`ic` Selecciona dentro de una clase.

`at` Selecciona alrededor de una etiqueta HTML (`<([%p%w]-)%f[^<%w][^<>]->.-</%1>`, `^<.->().*()</[^/]->$`).

`it` Selecciona dentro de una etiqueta HTML (`<([%p%w]-)%f[^<%w][^<>]->.-</%1>`, `^<.->().*()</[^/]->$`).

`an` Selecciona alrededor del siguiente bloque de código, función, clase o etiqueta HTML.

`in` Selecciona dentro del siguiente bloque de código, función, clase o etiqueta HTML.

`al` Selecciona alrededor del último bloque de código, función, clase o etiqueta HTML.

`il` Selecciona dentro del último bloque de código, función, clase o etiqueta HTML.

`g[` Mueve el cursor al borde izquierdo del textobjeto 'a' (alrededor).

`g]` Mueve el cursor al borde derecho del textobjeto 'a' (alrededor).

(En modo visual u operador-pendiente) + 'a' o 'i'


# treeseeter

`<c-space>` Iniciar/incrementar selección incremental de nodos de Treesitter.

`<bs>` Disminuir selección incremental de nodos de Treesitter (retroceso).

`.` Seleccionar el "asunto de texto" actual.

`a;` Seleccionar el contenedor exterior (clase, función, etc.).

`i;` Seleccionar el interior de un contenedor (clase, función, etc.).

`<leader>rr` Renombrar inteligentemente un símbolo (variable, función, etc.).

`<leader>rd` Ir a la definición de un símbolo.

`<leader>rl` Listar todas las definiciones de un símbolo.

`<leader>rh` Mostrar un índice de las definiciones de un símbolo (Tabla de Contenido).

`<leader>rj` Ir al siguiente uso de un símbolo.

`<leader>rk` Ir al uso anterior de un símbolo.


interfaz de mason


`<CR>` Expande o contrae la información de un paquete.

`i` Instala el paquete seleccionado.

`u` Actualiza el paquete seleccionado.

`c` Verifica la versión del paquete seleccionado.

`U` Actualiza todos los paquetes instalados.

`C` Verifica si hay paquetes desactualizados.

`x` Desinstala el paquete seleccionado.

`<C-c>` Cancela la instalación en curso.

`<C-f>` Aplica un filtro de lenguaje para mostrar solo los paquetes relevantes para el lenguaje actual.


auto completion


`<C-k>` Seleccionar el elemento anterior en la lista de autocompletado.

`<C-j>` Seleccionar el siguiente elemento en la lista de autocompletado.

`<C-b>` Desplazarse hacia arriba en la documentación del elemento seleccionado.

`<C-f>` Desplazarse hacia abajo en la documentación del elemento seleccionado.

`<C-Space>` Mostrar la lista de autocompletado.

`<C-u>` Desplazarse 4 líneas hacia arriba en la documentación.

`<C-d>` Desplazarse 4 líneas hacia abajo en la documentación.

`<C-y>` Desactivar el autocompletado.

`<C-c>` (En modo inserción) Cancelar el autocompletado. (En modo comando) Cerrar la ventana de autocompletado.

`<CR>` Confirmar la selección y reemplazar el texto actual.

`<Tab>` Seleccionar el siguiente elemento, expandir un snippet o saltar al siguiente punto de un snippet.

`<S-Tab>` Seleccionar el elemento anterior o saltar al punto anterior de un snippet.


**Copilot:**


`<Tab>` (En modo inserción) Mostrar opciones de autocompletado en el prompt de chat.

`/<Tab>`
(En modo inserción) Mostrar opciones de autocompletado en el prompt de chat.

`q` (En modo normal) Cerrar la ventana de chat.

`<C-c>` (En modo inserción) Cerrar la ventana de chat.

`<C-l>` (En modo normal e inserción) Reiniciar el chat (borrar el historial).

`<CR>` (En modo normal) Enviar el prompt actual a Copilot.

`<C-m>` (En modo inserción) Enviar el prompt actual a Copilot.

`<C-y>` (En modo normal e inserción) Aceptar los cambios sugeridos por Copilot.

`gy` (En modo normal) Copiar los cambios sugeridos por Copilot al portapapeles.

`gd` (En modo normal) Mostrar los cambios sugeridos por Copilot en una vista de diferencias.

`gp` (En modo normal) Mostrar el prompt del sistema generado por Copilot.

`gs` (En modo normal) Mostrar la selección actual del usuario en la ventana de chat (útil para el contexto).


**copilot.lua (Panel)**

`[[` Ir a la sugerencia anterior de Copilot.

`]]` Ir a la siguiente sugerencia de Copilot.

`<CR>` Aceptar la sugerencia seleccionada de Copilot.

`gr` Refrescar las sugerencias de Copilot.

`<M-CR>` Abrir la sugerencia seleccionada en una ventana flotante.

`copilot.lua` (Sugerencias)

`<M-l>` Aceptar la sugerencia en línea actual de Copilot.

`<M-]>` Ir a la siguiente sugerencia en línea.

`<M-[>` Ir a la sugerencia en línea anterior.

`<C-]>` Descartar la sugerencia en línea actual.


**NVIM-TREE:**


`Y` Copiar el nombre del archivo o directorio seleccionado al portapapeles.

`y` Copiar la ruta relativa del archivo o directorio seleccionado al portapapeles.

`l` o `<CR>` Abrir el archivo o directorio seleccionado.

`h` Cerrar el directorio actual (o navegar al directorio padre si ya estás en la raíz).

`v` Abrir el archivo o directorio seleccionado en una división vertical.

`o` Abrir el archivo o directorio seleccionado en una división horizontal.


**Atajos de Teclado Spectree:**


`t` Activar/desactivar la línea actual en los resultados de búsqueda.

`<CR>` Ir al archivo y línea de la entrada seleccionada.

`Q` Enviar todos los resultados de búsqueda a la lista de coincidencias rápidas (`quickfix`).

`c` Abrir un prompt para introducir un comando de reemplazo de Vim.

`o` Mostrar el menú de opciones de Spectre.

`R` Ejecutar el reemplazo en todos los resultados de búsqueda.

`m` Cambiar el modo de vista de los resultados.

`I` Activar/desactivar la opción "ignorar mayúsculas/minúsculas" en la búsqueda.

`H` Activar/desactivar la opción "buscar en archivos ocultos".


**Atajos de Teclado TABOUT:**


`<Tab>` Si el cursor está dentro de un par de caracteres configurable, salta fuera de ellos. De lo contrario, inserta una tabulación o realiza la acción de tabulación predeterminada (`<C-t>` en este caso).



**Atajos de Teclado: Flash NVIM**

`s` Activa el modo de salto de Flash en modo normal, visual y operador-pendiente.

`S` Activa el modo de salto de Flash basado en árboles de sintaxis de Treesitter en modo normal, visual y operador-pendiente.

`r` Activa el modo de salto remoto de Flash en modo operador-pendiente.

`R` Activa el modo de búsqueda de Treesitter de Flash en modo operador-pendiente y visual.

`<c-s>` Activa/desactiva la búsqueda de Flash en modo comando.



**Atajos de Teclado Spider:**


`w`
Mover el cursor a la siguiente palabra, saltando la puntuación insignificante.

`e` Mover el cursor al final de la siguiente palabra, saltando la puntuación insignificante.

`b` Mover el cursor al principio de la palabra anterior, saltando la puntuación insignificante.

`ge` Mover el cursor al final de la palabra anterior, saltando la puntuación insignificante.


## Atajos de Teclado para Telescope

### Modo Inserción (i)


`<Esc>` Cierra la ventana de Telescope.

`<C-n>` Navega al siguiente elemento en el historial de búsqueda.

`<C-p>` Navega al elemento anterior en el historial de búsqueda.

`<C-j>` Mueve la selección hacia abajo.

`<C-k>` Mueve la selección hacia arriba.

`<C-c>` Cierra la ventana de Telescope.

`<CR>` Selecciona el elemento actual y lo abre.

`<C-x>` Selecciona el elemento actual y lo abre en una división horizontal.

`<C-v>` Selecciona el elemento actual y lo abre en una división vertical.

`<C-t>` Selecciona el elemento actual y lo abre en una nueva pestaña.

`<C-s>` Utiliza el plugin flash.nvim para saltar a los resultados de búsqueda.

`<C-u>` Desplazarse hacia arriba en la vista previa.

`<C-d>` Desplazarse hacia abajo en la vista previa.

`<PageUp>` Desplazarse una página hacia arriba en los resultados.

`<PageDown>` Desplazarse una página hacia abajo en los resultados.

`<Tab>` Alterna la selección y mueve al siguiente elemento peor clasificado.

`<S-Tab>` Alterna la selección y mueve al siguiente elemento mejor clasificado.

`<C-q>` Envía todos los elementos a la lista de coincidencias rápidas y la abre.

`<M-q>` Envía el elemento seleccionado a la lista de coincidencias rápidas y la abre.

`<C-l>` Completa la etiqueta actual (si es aplicable).


### Modo Normal (n) Telescope


`q` Cierra la ventana de Telescope.

`<Esc>` Cierra la ventana de Telescope.

`j` Mueve la selección hacia abajo.

`k` Mueve la selección hacia arriba.

`gg` Mueve la selección al primer elemento.

`G` Mueve la selección al último elemento.

`<C-u>` Desplazarse hacia arriba en la vista previa.

`<C-d>` Desplazarse hacia abajo en la vista previa.

`<PageUp>` Desplazarse una página hacia arriba en los resultados.

`<PageDown>` Desplazarse una página hacia abajo en los resultados.

`<Tab>` Alterna la selección y mueve al siguiente elemento peor clasificado.

`<S-Tab>` Alterna la selección y mueve al siguiente elemento mejor clasificado.

`<C-q>` Envía todos los elementos a la lista de coincidencias rápidas y la abre.

`<M-q>` Envía el elemento seleccionado a la lista de coincidencias rápidas y la abre.

`?` Muestra la ayuda de `which-key.nvim` para Telescope.


**Atajos de Teclado marks.lua`:**


`m` Alternar un marcador en la posición actual.

`M` Establecer un marcador en la posición actual.


**Atajos de Teclado GITSIGNS:**

Atajo

Acción

`]c` Ir al siguiente cambio (hunk) en el archivo (solo funciona si no estás en modo diff).

`[c` Ir al cambio anterior (hunk) en el archivo (solo funciona si no estás en modo diff).

`ih` (En modo normal, visual u operador-pendiente) Seleccionar el hunk actual.


**Atajos de Teclado: gitlinker**

Atajo

Acción

`<leader>yg`

Copia al portapapeles el enlace al archivo actual (o a la línea actual si la opción `add_current_line_on_normal_mode` está habilitada).


**Atajos de Teclado: OBJECT OPERATOR**


| Modo                             | Atajo         | Acción                                                                                                                      |
| :------------------------------- | :------------ | :-------------------------------------------------------------------------------------------------------------------------- |
| Normal, Visual, Operator-pending | `a=`          | Seleccionar la parte externa de una asignación (por ejemplo, `x = 10`).                                                     |
| Normal, Visual, Operator-pending | `i=`          | Seleccionar la parte interna de una asignación (por ejemplo, `10` en `x = 10`).                                             |
| Normal, Visual, Operator-pending | `al=`         | Seleccionar el lado izquierdo de una asignación (por ejemplo, `x` en `x = 10`).                                             |
| Normal, Visual, Operator-pending | `ar=`         | Seleccionar el lado derecho de una asignación (por ejemplo, `10` en `x = 10`).                                              |
| Normal, Visual, Operator-pending | `a:`          | Seleccionar la parte externa de una propiedad de objeto (por ejemplo, `nombre: "Juan"` en JavaScript).                      |
| Normal, Visual, Operator-pending | `i:`          | Seleccionar la parte interna de una propiedad de objeto (por ejemplo, `"Juan"` en `nombre: "Juan"` en JavaScript).          |
| Normal, Visual, Operator-pending | `l:`          | Seleccionar la parte izquierda de una propiedad de objeto (por ejemplo, `nombre` en `nombre: "Juan"` en JavaScript).        |
| Normal, Visual, Operator-pending | `r:`          | Seleccionar la parte derecha de una propiedad de objeto (por ejemplo, `"Juan"` en `nombre: "Juan"` en JavaScript).          |
| Normal, Visual, Operator-pending | `aa`          | Seleccionar la parte externa de un parámetro/argumento de función (por ejemplo, `(x, y)` en `function suma(x, y)`).         |
| Normal, Visual, Operator-pending | `ia`          | Seleccionar la parte interna de un parámetro/argumento de función (por ejemplo, `x, y` en `function suma(x, y)`).           |
| Normal, Visual, Operator-pending | `ai`          | Seleccionar la parte externa de una sentencia condicional (por ejemplo, `if (x > 0) { ... }`).                              |
| Normal, Visual, Operator-pending | `ii`          | Seleccionar la parte interna de una sentencia condicional (por ejemplo, `x > 0` en `if (x > 0) { ... }`).                   |
| Normal, Visual, Operator-pending | `al`          | Seleccionar la parte externa de un bucle (por ejemplo, `for (let i = 0; i < 10; i++) { ... }`).                             |
| Normal, Visual, Operator-pending | `il`          | Seleccionar la parte interna de un bucle (por ejemplo, `let i = 0; i < 10; i++` en `for (let i = 0; i < 10; i++) { ... }`). |
| Normal, Visual, Operator-pending | `af`          | Seleccionar la parte externa de una llamada a función (por ejemplo, `suma(5, 3)`).                                          |
| Normal, Visual, Operator-pending | `if`          | Seleccionar la parte interna de una llamada a función (por ejemplo, `5, 3` en `suma(5, 3)`).                                |
| Normal, Visual, Operator-pending | `am`          | Seleccionar la parte externa de la definición de una función o método.                                                      |
| Normal, Visual, Operator-pending | `im`          | Seleccionar la parte interna de la definición de una función o método.                                                      |
| Normal, Visual, Operator-pending | `ac`          | Seleccionar la parte externa de una clase.                                                                                  |
| Normal, Visual, Operator-pending | `ic`          | Seleccionar la parte interna de una clase.                                                                                  |
| Normal, Visual, Operator-pending | `<leader>rna` | Intercambiar el parámetro/argumento actual con el siguiente.                                                                |
| Normal, Visual, Operator-pending | `<leader>rn:` | Intercambiar la propiedad del objeto actual con la siguiente.                                                               |
| Normal, Visual, Operator-pending | `<leader>rnm` | Intercambiar la función actual con la siguiente.                                                                            |
| Normal, Visual, Operator-pending | `<leader>rpa` | Intercambiar el parámetro/argumento actual con el anterior.                                                                 |
| Normal, Visual, Operator-pending | `<leader>rp:` | Intercambiar la propiedad del objeto actual con la anterior.                                                                |
| Normal, Visual, Operator-pending | `<leader>rpm` | Intercambiar la función actual con la anterior.                                                                             |
| Normal, Visual, Operator-pending | `]f`          | Ir al inicio de la siguiente llamada a función.                                                                             |
| Normal, Visual, Operator-pending | `]m`          | Ir al inicio de la siguiente definición de método/función.                                                                  |
| Normal, Visual, Operator-pending | `]c`          | Ir al inicio de la siguiente clase.                                                                                         |
| Normal, Visual, Operator-pending | `]i`          | Ir al inicio de la siguiente sentencia condicional.                                                                         |
| Normal, Visual, Operator-pending | `]l`          | Ir al inicio del siguiente bucle.                                                                                           |
| Normal, Visual, Operator-pending | `]S`          | Ir al siguiente ámbito (scope).                                                                                             |
| Normal, Visual, Operator-pending | `]z`          | Ir al siguiente pliegue (fold).                                                                                             |
| Normal, Visual, Operator-pending | `]F`          | Ir al final de la siguiente llamada a función.                                                                              |
| Normal, Visual, Operator-pending | `]M`          | Ir al final de la siguiente definición de método/función.                                                                   |
| Normal, Visual, Operator-pending | `]C`          | Ir al final de la siguiente clase.                                                                                          |
| Normal, Visual, Operator-pending | `]I`          | Ir al final de la siguiente sentencia condicional.                                                                          |
| Normal, Visual, Operator-pending | `]L`          | Ir al final del siguiente bucle.                                                                                            |
| Normal, Visual, Operator-pending | `[f`          | Ir al inicio de la llamada a función anterior.                                                                              |
| Normal, Visual, Operator-pending | `[m`          | Ir al inicio de la definición de método/función anterior.                                                                   |
| Normal, Visual, Operator-pending | `[c`          | Ir al inicio de la clase anterior.                                                                                          |
| Normal, Visual, Operator-pending | `[i`          | Ir al inicio de la sentencia condicional anterior.                                                                          |
| Normal, Visual, Operator-pending | `[l`          | Ir al inicio del bucle anterior.                                                                                            |
| Normal, Visual, Operator-pending | `[F`          | Ir al final de la llamada a función anterior.                                                                               |
| Normal, Visual, Operator-pending | `[M`          | Ir al final de la definición de método/función anterior.                                                                    |
| Normal, Visual, Operator-pending | `[C`          | Ir al final de la clase anterior.                                                                                           |
| Normal, Visual, Operator-pending | `[I`          | Ir al final de la sentencia condicional anterior.                                                                           |
| Normal, Visual, Operator-pending | `[L`          | Ir al final del bucle anterior.                                                                                             |
| Normal, Visual, Operator-pending | `;`           | Repetir el último movimiento de textobjeto de Treesitter.                                                                   |
| Normal, Visual, Operator-pending | `,`           | Repetir el último movimiento de textobjeto de Treesitter en la dirección opuesta.                                           |

ATAJOS KEYS.LUA

| Modo | Atajo | Acción | | :---------- | :------- | :-------------------------------------------------------- | | Normal | `<Space>` | Configura la barra espaciadora como la tecla líder (`<leader>`). | | Insert | `jj` | Salir del modo de inserción (equivalente a `<Esc>`). | | Terminal | `JJ` | Salir del modo de terminal y volver al modo normal. | | Visual/Block | `p` | Pegar sin reemplazar el texto seleccionado ("overwrite paste"). | | Visual/Block | `x` | Cortar sin copiar el texto seleccionado. | | Normal, Visual, Block | `-` | Disminuir un número (equivalente a `<C-x>`). | | Normal, Visual, Block | `=` | Aumentar un número (equivalente a `<C-a>`). |

| Modo                | Atajo         | Acción                                                                                                                       |
| :------------------ | :------------ | :--------------------------------------------------------------------------------------------------------------------------- |
| Normal/Visual/Block | `gl`          | Ir al final de la línea.                                                                                                     |
| Normal/Visual/Block | `gh`          | Ir al inicio de la línea.                                                                                                    |
| Normal              | `J`           | Unir la línea actual con la siguiente y mantener el cursor en el centro de la pantalla.                                      |
| Normal              | `<C-d>`       | Desplazar media pantalla hacia abajo y centrar el cursor.                                                                    |
| Normal              | `<C-u>`       | Desplazar media pantalla hacia arriba y centrar el cursor.                                                                   |
| Normal              | `n`, `N`      | Buscar la siguiente/anterior coincidencia y centrar el cursor en la pantalla.                                                |
| Normal              | `j`, `k`      | Moverse una línea hacia abajo/arriba, visualmente si el contador es 0 (`gj`, `gk`) o normalmente (`j`, `k`) de lo contrario. |
| Visual, Block       | `J`, `K`      | Mover la selección una línea hacia abajo/arriba.                                                                             |
| Insert, Normal      | `<Esc>`       | Salir del modo de inserción/limpiar el resaltado de búsqueda.                                                                |
| Visual              | `<`           | Indentar la selección visual hacia la izquierda.                                                                             |
| Visual              | `>`           | Indentar la selección visual hacia la derecha.                                                                               |
| Insert              | `,`, `.`, `;` | Insertar el carácter y crear un punto de deshacer (`<c-g>u`).                                                                |

