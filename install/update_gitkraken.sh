#!/bin/sh
# Based https://gist.github.com/grenade/3b3c5b17586881d01142

cd /tmp/

URL="https://release.gitkraken.com/linux/gitkraken-amd64.tar.gz"
FILE=${URL##*/}

wget -c "$URL" -O "$FILE"

if [[ ! -f "$FILE" ]]; then
	exit 1
fi

tar -xzf "$FILE" -C "/opt/"

ln -sf "/opt/GitKraken/gitkraken" "/usr/bin/gitkraken"

cat <<EOF | tee ~/.local/share/icons/gitkraken.svg
<svg width="48" height="48" xmlns="http://www.w3.org/2000/svg">
 <g class="currentLayer">
  <title>Layer 1</title>
  <path stroke="null" fill="#149287" id="svg_1" d="m46.159576,11.635286c-0.196424,-0.54956 -0.785695,-0.803203 -1.257112,-0.591833c-0.353563,0.169095 -0.589271,0.54956 -0.589271,0.930024c0,0.126821 0,0.253643 0.078569,0.338191c0.903549,2.578703 1.414251,5.368775 1.414251,8.327942c0,11.96349 -8.289081,21.897837 -19.053102,23.37742l0,-11.033466c0.667841,-0.126821 1.296397,-0.338191 1.924953,-0.54956l0,9.257966c8.760498,-2.282786 15.321051,-10.822097 15.321051,-21.05236c0,-8.158846 -4.203468,-15.303121 -10.410458,-18.980943c-0.471417,-0.295917 -1.060688,-0.084548 -1.296397,0.465012c-0.078569,0.126821 -0.078569,0.295917 -0.078569,0.465012c0,0.380464 0.196424,0.718655 0.471417,0.88775c5.617719,3.339631 9.428339,9.807525 9.428339,17.205443c0,8.327942 -4.792739,15.429943 -11.589,18.304562l0,-8.20112c1.178542,-0.380464 2.042807,-1.564131 2.042807,-3.001441c0,-1.183667 -0.549986,-2.155965 -1.453536,-2.705524c0.667841,-7.102001 3.692766,-5.199679 3.692766,-7.482465l0,-1.310488c0,-3.381905 -7.267678,-14.415371 -10.685451,-14.669014l-0.628556,0c-3.417773,0.253643 -10.685451,11.287109 -10.685451,14.669014l0,1.310488c0,2.240512 2.985641,0.380464 3.692766,7.482465c-0.864264,0.54956 -1.414251,1.564131 -1.414251,2.705524c0,1.395036 0.864264,2.578703 2.042807,3.001441l0,8.20112c-6.756976,-2.874619 -11.589,-9.976621 -11.589,-18.304562c0,-7.397918 3.81062,-13.865812 9.428339,-17.205443c0.432132,-0.253643 0.628556,-0.845476 0.392847,-1.352762c-0.117854,-0.380464 -0.471417,-0.591833 -0.82498,-0.591833c-0.157139,0 -0.314278,0.042274 -0.471417,0.126821c-6.20699,3.677822 -10.410458,10.822097 -10.410458,18.980943c0,10.230263 6.560553,18.769574 15.39962,21.094634l0,-9.257966c0.628556,0.211369 1.257112,0.422738 1.924953,0.54956l0,11.033466c-10.76402,-1.521857 -19.053102,-11.41393 -19.053102,-23.419694c0,-2.916893 0.510702,-5.706965 1.414251,-8.327942c0.196424,-0.507286 -0.039285,-1.099119 -0.510702,-1.310488c-0.117854,-0.042274 -0.235708,-0.084548 -0.353563,-0.084548c-0.392847,0 -0.74641,0.253643 -0.903549,0.676381c-1.021403,2.832346 -1.57139,5.87606 -1.57139,9.046597c0,13.823538 10.135464,25.068373 22.863722,25.617932l0,-12.978062c0.353563,0.042274 0.982119,0.042274 0.982119,0.042274s0.628556,0 0.982119,-0.042274l0,12.978062c12.728258,-0.54956 22.863722,-11.794395 22.863722,-25.617932c-0.039285,-3.170536 -0.549986,-6.214251 -1.532105,-9.004323zm-17.913844,14.62674c0.353563,-0.380464 0.82498,-0.634107 1.374966,-0.634107s1.021403,0.253643 1.374966,0.634107c0.353563,0.380464 0.589271,0.88775 0.589271,1.479584s-0.235708,1.099119 -0.589271,1.479584c-0.353563,0.380464 -0.82498,0.634107 -1.374966,0.634107s-1.021403,-0.253643 -1.374966,-0.634107c-0.353563,-0.380464 -0.589271,-0.88775 -0.589271,-1.479584s0.235708,-1.099119 0.589271,-1.479584zm-8.799783,2.959167c-0.353563,0.380464 -0.82498,0.634107 -1.374966,0.634107s-1.021403,-0.253643 -1.374966,-0.634107c-0.392847,-0.380464 -0.589271,-0.88775 -0.589271,-1.479584s0.235708,-1.099119 0.589271,-1.479584c0.353563,-0.380464 0.82498,-0.634107 1.374966,-0.634107s1.021403,0.253643 1.374966,0.634107c0.353563,0.380464 0.589271,0.88775 0.589271,1.479584c-0.039285,0.591833 -0.235708,1.099119 -0.589271,1.479584z" class="gk-logo-squid selected"/>
 </g>
 <g>
  <title>Layer 2</title>
  <rect fill="none" y="0" x="0" width="16" id="backgroundrect"/>
 </g>
 <g>
  <title>background</title>
  <rect fill="none" id="canvas_background" height="50" width="50" y="-1" x="-1"/>
 </g>
</svg>
EOF


# cp "$(dirname $0)/gitkraken.svg" "~/.local/share/icons/hicolor/scalable/apps/"
gtk-update-icon-cache 
# -f -t ~/.local/share/icons/hicolor

cat <<EOF | tee ~/.local/share/applications/gitkraken.desktop
[Desktop Entry]
Name=GitKraken
Type=Application
Icon=gitkraken.svg
Exec=gitkraken
Comment=The downright luxurious Git client
Categories=Development;IDE;
Keywords=Git;
StartupNotify=true
Terminal=false
EOF