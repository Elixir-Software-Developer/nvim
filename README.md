## Configuración Avanzada de Neovim: Un Enfoque Paso a Paso

# TODO
  Instalar tdo [ ]
  Instalar fd [ ]
  Instalar rg [ ]
  Instalar fzf [ ]

Este proyecto tiene como objetivo replicar y documentar una configuración avanzada de Neovim, detallando cada paso en un formato similar a un libro. La meta es crear un entorno de desarrollo potente, personalizado y eficiente.

### Estructura del Proyecto



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
├── init.lua [ ]
├── LICENSE [ ]
├── lua
│   ├── core
│   │   ├── autocmd.lua [ ]
│   │   ├── functions.lua [ ]
│   │   ├── keys.lua [ ]
│   │   └── options.lua [ ]
│   ├── lib
│   │   ├── icons.lua [ ]
│   │   └── util.lua [ ]
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
│           ├── dashboard.lua [ ]
│           ├── dressing.lua [ ]
│           ├── indentline.lua [ ]
│           ├── lualine.lua [ ]
│           ├── notify.lua [ ]
│           ├── onedark.lua [ ]
│           ├── rainbow.lua [ ]
│           ├── twilight.lua [ ]
│           ├── wilder.lua [ ]
│           └── zen-mode.lua [ ]
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
