# Docker Para Kali Linux

Este repositorio, como su nombre indica, es para **installar Docker en Kali Linux** ya que, de otra formas, se complica. El instalador está hecho en Shell y se puede ver el código de este antes de ejecutarse para saber si todo lo que hace está dentro de lo que el usuario acepte.

## Instalación
Clone el repositorio en caso de que aún no lo haya echo:

```shell
git clone https://github.com/CarlosDelRosario7/docker-para-kali-linux.git
```

Entre al repositorio clonado y ejecute el programa:

```shell
cd docker-para-kali-linux
./install.sh
```

Con esto, debería de estar listo. En algunos casos, es necesario reiniciar el computador.

### Nota
Este repositorio es del 15 de septiembre del 2023. Puede de que se necesite actualizar los paquetes a medida de que pase el tiempo. Significa que, tarde o temprano, esta instalación será opsoleta.

Note también que los paquetes que se instalan son de Debían 11 (versión Bullseye) amd64. Fue la versión más resiente y compatible que encontré para Kali Linux.
