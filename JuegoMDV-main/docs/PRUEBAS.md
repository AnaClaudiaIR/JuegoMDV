#Primera ejecución del build#
Fecha: 29/09/2026

Resultado: Tras la instalación de las plantillas de Windows, el ejecutable se exportó correctamente. Al abrirlo, muestra el Sprite en pantalla. Se ha ejecutado con éxito.


25/10/2026

#EJERCICIO T2.2
Arquitectura desacoplada: La escena principal (Main) integra la escena reutilizada del jugador (Player) y un temporizador de un solo uso (RoundTimer), manteniendo roles independientes y aislados.

Nodo Player: Calcula su movimiento y rotación en _process(). Al detectar la acción interact en _unhandled_input(), emite la señal personalizada interact_requested sin conocer qué nodo la recibirá.

Nodo RoundTimer: Inicia su cuenta regresiva en el _ready() de Main y, al expirar su wait_time, emite de forma automática la señal nativa timeout.

Coordinación en main.gd: Escucha ambas señales. Al recibir interact_requested, imprime una confirmación en consola; al capturar timeout, finaliza la ronda congelando al jugador con set_process(false) y set_process_unhandled_input(false).

Cierre y control de versiones: Se ejecutan pruebas para verificar el comportamiento antes y después de que expire el tiempo, registrando los resultados en docs/pruebas.md y guardando los cambios mediante un commit de Git.
