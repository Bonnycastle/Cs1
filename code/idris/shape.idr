module shape

data shape = sphere | box | cylindrical
data object = ball | door | bottle

shapeobject: object -> shape
shapeobject ball = sphere
shapeobject door = box
shapeobject bottle = cylindrical

