## Configuración Avanzada de Neovim: Un Enfoque Paso a Paso

# TODO
  Instalar tdo [ ]
  Instalar fd [ ]
  Instalar rg [ ]
  Instalar fzf [ ]
  Instalar debugpy [ ] requerido por dap.lua
  Instalar readapt [ ] requerido por dap.lua
 Deberás instalar sniprun  [ ] con su comando `install.sh`






Este proyecto tiene como objetivo replicar y documentar una configuración avanzada de Neovim, detallando cada paso en un formato similar a un libro. La meta es crear un entorno de desarrollo potente, personalizado y eficiente.

### Estructura del Proyecto

Onedark (tema)
Utilidades personalizadas (lib/util.lua)
Lazy.nvim (gestor de plugins)
Lualine (barra de estado)
Indent Blankline (guías de indentación)
Rainbow Delimiters (resaltado de delimitadores)
nvim-notify (notificaciones personalizadas)
Dressing.nvim (mejora de inputs y selecciones)
Dashboard (página de inicio personalizada)
Wilder.nvim (mejora del wildmenu)
Zen Mode y Twilight (modo zen y oscurecimiento de código)
Neotest (ejecución de pruebas)
SnipRun (ejecución de fragmentos de código)


* [lua/plugins/lazy.lua](# primero)
* [lua/plugins/list.lua](# primero)
* [lib/icons.lua](# primero)
* [init.luan](# primero)

```
.
├── docs
│   └── keybindings.md [ ]
├── images
│   └── screenshot.png [ ]
├── init.lua [x]
├── LICENSE [ ]
├── lua
│   ├── core
│   │   ├── autocmd.lua [ ]
│   │   ├── functions.lua [ ]
│   │   ├── keys.lua [ ]
│   │   └── options.lua [ ]
│   ├── lib
│   │   ├── icons.lua [x]
│   │   └── util.lua [x]
│   └── plugins
│       ├── lang
│       │   ├── ai.lua [ ]
│       │   ├── autopairs.lua [ ]
│       │   ├── cmp.lua [ ]
│       │   ├── comment.lua [ ]
│       │   ├── copilot-chat.lua [ ]
│       │   ├── copilot.lua [ ]
│       │   ├── dap.lua [ ]
│       │   ├── lspconfig.lua [ ]
│       │   ├── lspsaga.lua [ ]
│       │   ├── mason.lua [ ]
│       │   ├── neotest.lua [ ]
│       │   ├── null-ls.lua [ ]
│       │   ├── refactoring.lua [ ]
│       │   ├── ror.lua [ ]
│       │   ├── sniprun.lua [ ]
│       │   ├── surround.lua [ ]
│       │   ├── textobjects.lua [ ]
│       │   └── treesitter.lua [ ]
│       ├── lazy.lua [ ]
│       ├── list.lua [ ]
│       ├── lock.json [ ]
│       ├── tools
│       │   ├── ccc.lua [ ]
│       │   ├── dbee.lua [ ]
│       │   ├── flash.lua [ ]
│       │   ├── gitlinker.lua [ ]
│       │   ├── gitsigns.lua [ ]
│       │   ├── marks.lua [ ]
│       │   ├── navigator.lua [ ]
│       │   ├── nvim-tree.lua [ ]
│       │   ├── spectre.lua [ ]
│       │   ├── spider.lua [ ]
│       │   ├── tabout.lua [ ]
│       │   ├── telescope.lua [ ]
│       │   └── which-key.lua [ ]
│       └── ui
│           ├── dashboard.lua [x]
│           ├── dressing.lua [x]
│           ├── indentline.lua [x]
│           ├── lualine.lua [x]
│           ├── notify.lua [x]
│           ├── onedark.lua [x]
│           ├── rainbow.lua [x]
│           ├── twilight.lua [x]
│           ├── wilder.lua [x]
│           └── zen-mode.lua [x]
├── plugin
│   └── after
│       └── highlights.lua [ ]
├── README.md [ ]
└── tree.txt [ ]


```

**Descripción de Archivos y Directorios:**

-   `.`: Directorio raíz de la configuración.
-   `docs/`: Documentación adicional (ej., atajos de teclado).
-   `images/`: Almacena imágenes (ej., capturas de pantalla).
-   `init.lua`: Archivo principal de configuración.
-   `LICENSE`: Archivo de licencia del proyecto.
-   `lua/`: Configuración personalizada en Lua.
    -   `core/`: Configuración esencial del editor.
    -   `lib/`: Librerías y utilidades auxiliares.
    -   `plugins/`: Configuración de plugins (lenguaje, herramientas, UI).
-   `plugin/after/`: Configuración posterior a la carga de plugins.
-   `README.md`: Descripción del proyecto (este archivo).
-   `tree.txt`: Estructura del proyecto.

### Plan de Acción

1.  **Instalación y Configuración Básica de Neovim:** Asegurarnos de tener Neovim instalado y crear un archivo `init.lua` básico.

2.  **Opciones y Atajos de Teclado (`core/`):** Personalizar opciones y crear atajos de teclado eficientes.

3.  **Funciones Personalizadas (`core/functions.lua`):** Añadir funciones para extender las capacidades de Neovim.

4.  **Gestión de Plugins (`plugins/`):** Utilizar un administrador de plugins (ej., "lazy.nvim") para instalar y configurar plugins de forma eficiente.

5.  **Interfaz de Usuario (`plugins/ui/`):** Mejorar la apariencia con temas, iconos y personalización de la barra de estado.

6.  **Lenguajes de Programación (`plugins/lang/`):** Instalar plugins específicos para lenguajes de programación (resaltado, autocompletado, formateo).

7.  **Herramientas y Utilidades (`plugins/tools/`):** Añadir plugins para administración de archivos, integración con Git, búsqueda, etc.

8.  **Documentación y Ajustes Finales:** Documentar cada paso en detalle y realizar ajustes finales para una configuración óptima.


¡Comencemos con la instalación y configuración básica de Neovim!


# Primero

* [lua/plugins/lazy.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/lazy.lua)
* [lua/plugins/list.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/list.lua)
* [lib/icons.lua](https://github.com/FQ211776/neovim/blob/master/lua/lib/icons.lua)
* [init.luan](https://github.com/FQ211776/neovim/blob/master/init.lua)


### Dependencias de `lazy.lua`

El archivo `lazy.lua`, encargado de gestionar los plugins en nuestra configuración de Neovim, depende de los siguientes archivos:

-   **`lib/icons.lua`:** Proporciona los iconos utilizados en la interfaz de usuario de Lazy.nvim.
-   **`plugins/list.lua`:** Contiene la lista completa de plugins a instalar y configurar.

Además,  `lazy.lua` interactúa con:

-   **`plugins/lock.json`:** Almacena información sobre las versiones de los plugins instalados para garantizar la reproducibilidad de la configuración.
-   **`init.lua`:** Es el punto de entrada principal de la configuración y se encarga de cargar `lazy.lua`.

Asegúrate de tener estos archivos en las ubicaciones correctas y con el contenido adecuado para un funcionamiento óptimo de tu configuración de Neovim.





# Segundo

* [lua/plugins/ui/onedark.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/onedark.lua)
* [lua/lib/util.lua](https://github.com/FQ211776/neovim/blob/master/lua/lib/util.lua)


## Configuración Avanzada de Neovim: Onedark y Utilidades Personalizadas

Este proyecto documenta paso a paso la configuración de Neovim, comenzando con el tema Onedark y un conjunto de funciones de utilidad.

### `onedark.lua`

Este archivo configura el tema Onedark para Neovim, personalizando la apariencia del editor con colores y estilos específicos. Permite ajustar aspectos como:

-   **Estilo:** Diferentes variantes de Onedark (ej., 'dark', 'deep', 'light').
-   **Transparencia:** Fondo transparente para la interfaz.
-   **Colores en la terminal:** Si se deben usar los colores del tema en la terminal integrada.
-   **Estilos de código:** Personalizar el estilo (itálico, negrita, subrayado) para comentarios, palabras clave, funciones, etc.
-   **Integración con Lualine:** Opciones para la barra de estado Lualine.
-   **Diagnósticos:** Apariencia de los mensajes de diagnóstico (errores, advertencias).

**Atajo de Teclado:**

-   `<leader>ot`: Alterna entre los diferentes estilos de Onedark disponibles.

**Dependencias:**

-   `onedark.lua` depende de `lib/util.lua` para obtener configuraciones de usuario personalizadas (si existen).

### `lib/util.lua`

Este archivo contiene funciones de utilidad que se utilizan en otras partes de la configuración de Neovim. Algunas de estas funciones son:

-   **`get_user_config(key, default)`:** Obtiene un valor de configuración del usuario, si existe, o devuelve un valor predeterminado.
-   **`get_root_dir()`:** Intenta determinar el directorio raíz del proyecto actual (útil para configuraciones específicas del proyecto).
-   **`get_file_type_cmd(extension)`:** Obtiene un comando para establecer el tipo de archivo según la extensión y el contexto del proyecto.
-   **`is_present(bin)`:** Verifica si un ejecutable está presente en el sistema.

**Dependencias:**

-   `lib/util.lua` no tiene dependencias directas de otros archivos de configuración. Utiliza funciones integradas de Neovim.

### Próximos Pasos

Con el tema Onedark y las funciones de utilidad configuradas, podemos avanzar hacia la personalización de opciones, atajos de teclado y la gestión de plugins para construir un entorno de Neovim completo y eficiente.



## Atajos de Teclado Personalizados

| Atajo        | Acción                                             |
| :----------- | :------------------------------------------------- |
| `<leader>ot` | Alterna entre diferentes estilos del tema Onedark. |

**Nota:** `<leader>` generalmente se configura como la barra espaciadora (` `).


# Tercero

## Configuración Avanzada de Neovim: Lualine

* [lua/plugins/ui/lualine.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/lualine.lua)
* [lua/lib/icons.lua](https://github.com/FQ211776/neovim/blob/master/lua/lib/icons.lua)

### `lualine.lua`

Este archivo configura Lualine, un plugin para personalizar la barra de estado de Neovim. Define el aspecto visual de la barra de estado, incluyendo colores, iconos y secciones de información.

**Funcionalidades:**

-   **Colores Personalizados:** Utiliza una paleta de colores definida en el archivo para crear un tema visualmente atractivo.
-   **Iconos:** Integra iconos de `lib/icons.lua` para mostrar información de forma clara y concisa.
-   **Secciones de Información:** Divide la barra de estado en secciones (izquierda, centro, derecha) para mostrar diferentes tipos de información, como el modo de Neovim, nombre del archivo, estado de Git, diagnósticos, etc.
-   **Condiciones de Visualización:** Algunas secciones se muestran solo bajo ciertas condiciones (por ejemplo, si el archivo está bajo control de versiones o si la ventana tiene un ancho mínimo).

**Dependencias:**

-   `lualine.lua` depende directamente de `lib/icons.lua` para mostrar iconos en la barra de estado.

**Atajos de Teclado:**

Lualine no define atajos de teclado directamente en este archivo. La interacción con los componentes de Lualine se realiza a través de otros atajos definidos en tu configuración o en los plugins que se integran con Lualine.



# Cuarto

* [lua/plugins/ui/indentline.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/indentline.lua)
* [lua/plugins/ui/rainbow.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/rainbow.lua)

## Configuración Avanzada de Neovim: Resaltado de Código y Guías de Indentación

### `rainbow.lua`

Este archivo configura el plugin "rainbow-delimiters.nvim" para resaltar los delimitadores (paréntesis, corchetes, llaves) en el código con diferentes colores. Esto facilita la identificación visual de bloques de código anidados, mejorando la legibilidad y comprensión del código.

**Funcionalidades:**

-   **Estrategias de Resaltado:** Permite definir diferentes estrategias para resaltar delimitadores en distintos tipos de archivo.
-   **Consultas de Delimitadores:** Personaliza cómo se buscan los delimitadores en diferentes tipos de archivo.
-   **Colores Personalizados:** Utiliza una paleta de colores predefinida para resaltar los delimitadores.
-   **Lista Negra de Archivos:** Excluye ciertos tipos de archivo o patrones de archivo del resaltado.

**Dependencias:**

-   "rainbow-delimiters.nvim" (requerido)

**Atajos de Teclado:**

El plugin "rainbow-delimiters.nvim" puede tener sus propios atajos de teclado para controlar su comportamiento. Consulta la documentación del plugin para más detalles.

### `indentline.lua`

Este archivo configura la visualización de guías de indentación en Neovim utilizando el plugin "indent-blankline.nvim". Las guías de indentación son líneas verticales que ayudan a visualizar la estructura del código, especialmente en lenguajes con niveles de indentación profundos.

**Funcionalidades:**

-   **Colores Personalizados:** Utiliza una paleta de colores definida en el archivo para las guías de indentación.
-   **Integración con Rainbow Delimiters:** Coordina los colores de las guías de indentación con los colores de los delimitadores proporcionados por el plugin "rainbow-delimiters.nvim".
-   **Exclusión de Tipos de Archivo:** Permite excluir ciertos tipos de archivo de la visualización de las guías de indentación.

**Dependencias:**

-   "indent-blankline.nvim" (requerido)
-   "rainbow_delimiters.nvim" (opcional, pero se recomienda para una mejor integración visual)

**Atajos de Teclado:**

Los atajos de teclado para controlar la visualización de las guías de indentación se definen en el plugin "indent-blankline.nvim". Consulta la documentación del plugin para más detalles.

**Combinación de Rainbow Delimiters e Indent Blankline:**

La configuración en `rainbow.lua` y `indentline.lua` está diseñada para trabajar en conjunto. Al usar la misma paleta de colores, las guías de indentación y los delimitadores resaltados se complementan visualmente, creando un entorno de edición más coherente y agradable.



# Quinto

## Configuración Avanzada de Neovim: Notificaciones Personalizadas

* [lua/plugins/ui/rainbow.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/nvim_notify.lua)
* [lua/lib/icons.lua](https://github.com/FQ211776/neovim/blob/master/lua/lib/icons.lua)

### `nvim_notify.lua`

Este archivo configura el plugin "nvim-notify" para mostrar notificaciones personalizadas en Neovim.

**Funcionalidades:**

-   **Apariencia Personalizada:** Controla el color de fondo, los iconos, el estilo de renderizado y las animaciones de las notificaciones.
-   **Niveles de Severidad:** Permite filtrar las notificaciones por su nivel de severidad (TRACE, DEBUG, INFO, WARN, ERROR).
-   **Agrupación de Mensajes:** Agrupa notificaciones similares para evitar el spam.
-   **Tamaño Dinámico:** Ajusta el tamaño máximo de las notificaciones en función del tamaño de la ventana de Neovim.

**Dependencias:**

-   "nvim-notify" (requerido)
-   "lib/icons.lua" (opcional, pero se recomienda para mejorar la presentación visual)


# Sexto

## Configuración Avanzada de Neovim: Inputs y Selecciones Mejoradas

* [lua/plugins/ui/dressing.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/dressing.lua)

### `dressing.lua`

Este archivo configura el plugin "dressing.nvim" para mejorar la apariencia y funcionalidad de los inputs de texto y selecciones en Neovim.

**Funcionalidades:**

-   **Inputs de Texto Mejorados:** Personaliza la apariencia de los inputs de texto, como el prompt, el borde y el ancho de la ventana.
-   **Selecciones Mejoradas:** Utiliza backends como Telescope, FZF o FZF Lua para mejorar la experiencia de selección de elementos.
-   **Temas Personalizados:** Se integra con temas de Neovim para una apariencia coherente.

**Dependencias:**

-   "dressing.nvim" (requerido)
-   Opcionalmente, puedes instalar "telescope.nvim", "fzf_lua", "fzf" o "nui.nvim" para usarlos como backends de selección.

**Atajos de Teclado:**

No define atajos de teclado específicos, pero mejora la experiencia de uso de los inputs y selecciones estándar de Neovim.



# Septimo

## Configuración Avanzada de Neovim: Dashboard Personalizado

### `dashboard.lua`

* [lua/plugins/ui/dashboard.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/dashboard.lua)

Este archivo configura el plugin "dashboard-nvim" para mostrar una página de inicio personalizada al abrir Neovim.

**Funcionalidades:**

-   **Tema:** Utiliza el tema "hyper" para la apariencia visual del dashboard.
-   **Atajos de Teclado:** Define atajos para acceder a funcionalidades comunes como la gestión de plugins, búsqueda de archivos, tareas pendientes, etc.
-   **Secciones Personalizadas:** Muestra información como proyectos recientes, archivos modificados recientemente, lista de tareas pendientes, etc.
-   **Integración con Telescope (Opcional):** Algunos atajos utilizan Telescope para buscar archivos y realizar búsquedas en el código.

**Dependencias:**

-   "dashboard-nvim" (requerido)
-   "lib/icons.lua" (opcional, pero se recomienda para mejorar la presentación visual)
-   "telescope.nvim" (opcional, si se utilizan los atajos de búsqueda)
-   "Tdo" (opcional, si se utiliza el atajo `d`)

**Atajos de Teclado:**

Atajo

Acción

`m` Ejecutar el comando `Mason`.

`p` Ejecutar el comando `Lazy`.

`f` Buscar archivos (requiere Telescope).

`g` Realizar una búsqueda en vivo en el código (requiere Telescope).

`d` Ejecutar el comando `Tdo`.

`q` Salir de Neovim.


# Octavo

## Configuración Avanzada de Neovim: Mejoras en el Wildmenu

### `wilder.nvim`

* [lua/plugins/ui/dashboard.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/dashboard.lua)
* [lua/lib/icons.lua](https://github.com/FQ211776/neovim/blob/master/lua/lib/icons.lua)

Este archivo configura el plugin Wilder.nvim, que mejora la experiencia de autocompletado y búsqueda en la línea de comandos (wildmenu) de Neovim.

**Funcionalidades:**

-   **Sugerencias en Tiempo Real:** Proporciona sugerencias inteligentes mientras escribes comandos, búsquedas o expresiones.
-   **Búsqueda Difusa:** Permite realizar búsquedas difusas en archivos, directorios, buffers y comandos.
-   **Ordenación Inteligente:** Ordena los resultados de búsqueda según su relevancia y similitud con la consulta.
-   **Pipelines Personalizables:** Te permite personalizar la lógica de búsqueda y autocompletado para diferentes modos y tipos de datos.
-   **Integración con Iconos:** Utiliza iconos de `lib/icons.lua` para mejorar la presentación visual de los resultados.

**Dependencias:**

-   "wilder.nvim" (requerido)
-   "fd" y "rg" (opcional, pero recomendado para una búsqueda más rápida)
-   "lib/icons.lua" (opcional, pero se recomienda para una mejor presentación visual)



# Noveno

## Configuración Avanzada de Neovim: Modo Zen y Oscurecimiento de Código

### `zen-mode.nvim` y `twilight.nvim`

* [lua/plugins/ui/dashboard.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/zen-mode.nvim)
* [lua/lib/icons.lua](https://github.com/FQ211776/neovim/blob/master/lua/plugins/ui/twilight.nvims.lua)


Estos archivos configuran el plugin `zen-mode.nvim` para activar un modo de edición sin distracciones y el plugin `twilight.nvim` para oscurecer las partes del código que no están en foco.

**Funcionalidades de `zen-mode.nvim`:**

-   **Modo Zen:** Oculta elementos de la interfaz de usuario para una experiencia de edición más inmersiva.
-   **Integración con Twilight:** Utiliza `twilight.nvim` para oscurecer partes del código y resaltar la línea actual.
-   **Expansión Automática:** Expande automáticamente bloques de código (funciones, métodos, etc.) para una mejor visualización.

**Funcionalidades de `twilight.nvim`:**

-   **Oscurecimiento de Código:** Oscurece las partes inactivas del código para reducir las distracciones.
-   **Personalización del Oscurecimiento:** Permite ajustar la opacidad y el color del oscurecimiento.
-   **Integración con Treesitter:** Utiliza Treesitter para un oscurecimiento más preciso basado en la estructura del código.

**Dependencias:**

-   **`zen-mode.nvim`:** Requiere "twilight.nvim".

**Atajos de Teclado:**

Puedes definir tus propios atajos de teclado en `core/keys.lua` para activar y desactivar estos modos. Por ejemplo:

```
vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>")  -- Activar/desactivar Zen Mode
vim.keymap.set("n", "<leader>t", "<cmd>Twilight<CR>") -- Activar/desactivar Twilight

```
---
# Entrando a la seccion tools
---

# Decimo

## Configuración Avanzada de Neovim: Depuración con nvim-dap

### `dap.lua`

* [lua/plugins/lang/dap.lua](https://github.com/FQ211776/neovim/blob/master/[lua/plugins/lang/dap.lua)

Este archivo configura el plugin "nvim-dap" para habilitar la depuración de código en Neovim, utilizando la interfaz de usuario proporcionada por "dapui".

**Funcionalidades:**

-   **Adaptadores de Depuración:** Configura adaptadores para Python y Ruby (Rails).
-   **Interfaz de Usuario:** Proporciona una interfaz visual para interactuar con la sesión de depuración, incluyendo visualización de variables, pila de llamadas, puntos de interrupción, etc.
-   **Atajos de Teclado:** Define atajos de teclado dentro de la interfaz de depuración para navegar y controlar la sesión.

**Dependencias:**

-   "nvim-dap" (requerido)
-   "dapui" (requerido)
-   "lib/icons.lua" (opcional, pero mejora la presentación visual)
-   Dependencias opcionales para los adaptadores de Python y Ruby, como `debugpy` y `readapt`.

**Atajos de Teclado:**

Atajo Acción

`<CR>` Expandir/Contraer

`<2-LeftMouse>` Expandir/Contraer

`o` Abrir

`d` Eliminar

`e` Editar

`r` REPL

`t` Alternar

`q`, `<Esc>` Cerrar (en ventana flotante)


# ONCEAVO

## Configuración Avanzada de Neovim: Ejecución de Pruebas con Neotest

### `neotest.lua`


* [lua/plugins/lang/neotest.lua](https://github.com/FQ211776/neovim/blob/master/[lua/plugins/lang/neotest.lua)

Este archivo configura Neotest, un framework para ejecutar y gestionar pruebas dentro de Neovim.

**Funcionalidades:**

-   **Adaptadores de Pruebas:** Permite integrar Neotest con diferentes frameworks de pruebas. En este caso, se configuran adaptadores para RSpec (Ruby) y Jest (JavaScript).
-   **Ejecución de Pruebas:** Neotest facilita la ejecución de pruebas individuales, suites de pruebas o todas las pruebas de un proyecto.
-   **Resultados de Pruebas:** Muestra los resultados de las pruebas de forma clara y concisa, incluyendo información sobre pruebas exitosas, fallidas y errores.
-   **Depuración de Pruebas:** Permite depurar las pruebas directamente desde Neovim, lo que facilita la identificación y corrección de errores.

**Dependencias:**

-   "neotest" (requerido)
-   "neotest-rspec" (requerido si se utilizan pruebas de RSpec)
-   "neotest-jest" (requerido si se utilizan pruebas de Jest)

**Atajos de Teclado:**

Puedes definir tus propios atajos de teclado en `core/keys.lua` para interactuar con Neotest. Algunos ejemplos son:

```LUA
vim.keymap.set("n", "<leader>tn", function() require("neotest").run.run() end)    -- Ejecutar la prueba actual
vim.keymap.set("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end) -- Ejecutar todas las pruebas en el archivo actual
vim.keymap.set("n", "<leader>ta", function() require("neotest").run.attach() end)  -- Adjuntar al proceso de prueba en ejecución
vim.keymap.set("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end) -- Abrir la ventana de salida de Neotest
vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end) -- Alternar la ventana de resumen de Neotest
```


# DOCEAVO:


## Configuración Avanzada de Neovim: Ejecutar Fragmentos de Código con SnipRun

### `sniprun.lua`

* [lua/plugins/lang/sniprun.lua](https://github.com/FQ211776/neovim/blob/master/[lua/plugins/lang/sniprun.lua)

Este archivo configura el plugin SnipRun, que permite ejecutar fragmentos de código seleccionados directamente desde Neovim sin necesidad de guardar el archivo.

**Funcionalidades:**

-   **Ejecución Rápida de Fragmentos:** Selecciona un fragmento de código y ejecútalo instantáneamente para ver los resultados.
-   **Visualización Flexible:** Los resultados se pueden mostrar como texto virtual sobre el código, en la línea de comandos o en una ventana flotante temporal.
-   **Soporte para Múltiples Lenguajes:** SnipRun es compatible con varios lenguajes de programación, lo que lo convierte en una herramienta versátil para el desarrollo.

**Dependencias:**

-   "sniprun" (requerido)

**Atajos de Teclado:**

Puedes definir tus propios atajos de teclado en `core/keys.lua` para ejecutar fragmentos de código con SnipRun. Por ejemplo:

```
vim.keymap.set("v", "<leader>r", function() require("sniprun").run() end, { desc = "Run Snippet" })

```

**Instalación:**

-   Deberás instalar sniprun con su comando `install.sh`
-   Si se utiliza lazy.nvim deberás colocar en `build` el valor `bash ./install.sh`

Con este atajo, puedes seleccionar un fragmento de código en modo visual y presionar `<leader>r` para ejecutarlo.


# TRECEAVO

## Configuración Avanzada de Neovim: Refactorización de Código con refactoring.nvim

### `refactoring.lua`


* [lua/plugins/lang/refactoring.lua](https://github.com/FQ211776/neovim/blob/master/[lua/plugins/lang/refactoring.lua)

Este archivo configura el plugin `refactoring.nvim`, que te permite realizar refactorizaciones de código comunes directamente desde Neovim.

**Funcionalidades:**

-   **Extracción de Funciones:** Extrae un bloque de código seleccionado en una nueva función.
-   **Extracción de Variables:** Extrae una expresión en una nueva variable.
-   **Renombrado:** Renombra variables, funciones y otros símbolos en tu código.
-   **Otras Refactorizaciones:** El plugin soporta otras refactorizaciones como "Extract Block", "Inline Variable", "Go to Declaration", etc.

**Dependencias:**

-   "refactoring.nvim" (requerido)

**Atajos de Teclado:**

Puedes definir tus propios atajos de teclado en `core/keys.lua` para realizar las refactorizaciones. Algunos ejemplos:

```lua
vim.keymap.set("v", "<leader>re", function() require("refactoring").refactor("Extract Function") end, { desc = "Extract Function" })
vim.keymap.set("v", "<leader>rf", function() require("refactoring").refactor("Extract Function to File") end, { desc = "Extract Function to File" })
vim.keymap.set("v", "<leader>rv", function() require("refactoring").refactor("Extract Variable") end, { desc = "Extract Variable" })
vim.keymap.set("n", "<leader>rn", function() require("refactoring").refactor("Rename") end, { desc = "Rename" })
```

# CATORCEAVO

## Configuración Avanzada de Neovim: Autocompletado de Pares con nvim-autopairs

### `autopairs.lua`

* [lua/plugins/lang/autopairs.lua](https://github.com/FQ211776/neovim/blob/master/[lua/plugins/lang/autopairs.lua)


Este archivo configura el plugin nvim-autopairs, que proporciona autocompletado automático de pares de caracteres (paréntesis, corchetes, comillas) en Neovim.

**Funcionalidades:**

-   **Autocompletado de Pares:** Cuando escribes un carácter de apertura (por ejemplo,  `(`), nvim-autopairs insertará automáticamente el carácter de cierre correspondiente (`)`).
-   **Integración con Treesitter:** Utiliza Treesitter para mejorar el comportamiento del autocompletado en diferentes contextos de código.
-   **Fast Wrap:** Permite envolver rápidamente el texto seleccionado con caracteres específicos mediante el atajo de teclado `<M-s>`.
-   **Personalización:** Puedes personalizar los caracteres utilizados, los tipos de archivo en los que se activa/desactiva y el comportamiento del fast wrap.

**Dependencias:**

-   "nvim-autopairs" (requerido)

**Atajos de Teclado:**

Atajo

Acción

`<M-s>` `<alt-s>`

Activa el fast wrap para los caracteres configurados `{`, `[`, `(`, `"`, `'`
