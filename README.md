Install opencv for Red Hat distribution or Raspberrypi
In this Repository there are three scrip for install and use Opencv

The Script install_opencv3.0.0.sh:

Allow install opencv in a Red Hat distribution.

It is based in:

Shunta Saito script (@mitmul) https://gist.github.com/mitmul/9253702
The Script install_opencv_raspberrypi.sh:

Allow install opencv in a raspberrypi 1 or 2

It is based in:

Post of pyimagesearch http://www.pyimagesearch.com/2015/02/23/install-opencv-and-python-on-your-raspberry-pi-2-and-b/
The script install_lib_for_raspicam.sh:

Allow instal library for raspicam for use with opencv.

It is based in:

Post of AVA (Aplicaciones de la Visión Artificial) http://www.uco.es/investiga/grupos/ava/node/40
Remind You

Create and export environment variable PKG_CONFIG_PATH

For this modify /etc/bashrc or /etc/bash.bashrc (depends of distribution) add:

PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

export PKG_CONFIG_PATH

And save

LICENCE MIT

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.