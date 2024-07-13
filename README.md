## Configuración Avanzada de Neovim: Un Enfoque Paso a Paso

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
