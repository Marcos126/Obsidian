## instalamos
primero nos traemos el archivo `.xinitrc`

<code> cp /etc/X11/xinit/xinitrc ~/.xinitrc </code>

## entramos al archivo y añadimos la siguiente linea

<code>exec i3</code>

luego entramos a el archivo <code>.bash_profile</code> y agregamos el siguiente codigo al final

<p><code>if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then<br> startx <br>fi </code></p>


Este codigo va a iniciar el comando startx cuando detecte que se activo la tty1
