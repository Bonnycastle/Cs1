module color

data color = red | yellow | green

nextColor: color -> color
nextColor green = yellow
nextColor yellow = red
nextColor red = green

