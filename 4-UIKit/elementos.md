# Conceptos y elementos basicos de la biblioteca UIKit de Swift

* UILabel: Basicamente se trata de un elemento para poner etiquetas, puede servir para titulos o textos peque;os

* UIImageView: Basicamente es el elemento para colocar images y propiedades que tienen que ver con la misma

* UITextView: Es una area de texto ideal para colocar parrafos o texto mas grandes a un titulo o subtitulo

* UIScrollView: Es ideal para areas donde el espacio es limitado y no permite la visualizacion completa por lo que es necesario que el usuario haga un scroll para ver todo el contenido.

    Este elemento permite la activacion de paginacion o activacion del scroll

* UITableView: Es un elemento que permite la creacion de tablas para desplegar contenido especifico.

* UIToolBar: Hace referencia a la barra de tareas normalmente ubicada en la parte inferior de la pantalla que tiene acciones especificas

* UINavigationBar: Es normalmente la barra superior que permite la navegacion entre paginas de la app y esto permite que el usuario pueda navegar entre todo el flujo de la app con una gran facilidad.

* UITabBar: Es una barra de pesta;as que permite el acceso a diferentes vistas de una aplicacion, normalmente esta compuesta por un icono y un texto. Las barras de pestañas se usan con frecuencia en apps que presentan varios flujos de trabajo o maneras de proceder. El controlador de vista para cada escena tiene una propiedad UITabBarItem que define el texto y la imagen opcional que mostrará la barra de pestañas. Para agregar una escena a un controlador de barra de pestañas y a la vista de la barra de pestañas, debes vincularla a la propiedad viewControllers del controlador de barra de pestañas en un storyboard.

* Controles: Piensa en un control como una herramienta de comunicación entre el usuario y la app. Cuando el usuario interactúa con un control, este activa un evento de control. Después de configurar un control en Interface Builder, debes configurar una IBAction que responda a un evento de control específico y te permita ejecutar un bloque de código. La mayoría de las veces usarás el evento de control Primary Action Triggered (UIControl.Event.primaryActionTriggered). Este evento de control se activa cuando se toca un botón o cuando el valor de un control cambia. 

* Botones (UIButton): Como su nombre lo dice es un boton con el cual el usuario puede interactuar

* Control Segmentado (UIsegmentedControl): Cada segmento funciona como un botón discreto que permite al usuario elegir entre un conjunto limitado y compacto de opciones. 

    ------------------------------
    Map | Transit | Satelite

    ------------------------------

    En este caso el usuario puede seleccionar entre una de las 3 opciones indicadas en el ejemplo.

* Campos de texto (UITextBox): Son campos de texto donde el usuario puede ingresar una linea de informacion, permite usarlo para informacion peque;a.

* Regulador (UISlider): Este es un elemento como una barrita que permite regular el brillo o el volument. Permite la modificacion de valores de una manera mas fluida y natural.

* Interruptor (UISwitch): Como su nombre lo dice son switches

* Selector de fecha(UIDatePicker): Permite selecionar la fecha en un formato de calendario.