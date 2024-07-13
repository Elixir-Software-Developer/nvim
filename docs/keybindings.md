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
