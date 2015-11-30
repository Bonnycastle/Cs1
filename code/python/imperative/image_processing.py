import pygame as pg

# grayPixel: pixel -> pixel
# compute and return a gray pixel with the same intensity
# as the given pixel
def grayPixel(pixel):
    red_intensity = pixel[0]
    green_intensity = pixel[1]
    blue_intensity = pixel[2]
    ave_intensity = (red_intensity + green_intensity+ blue_intensity)//3
    return (ave_intensity, ave_intensity, ave_intensity)

def lightpixel(pixel):
    red_intensity = int(pixel[0])
    green_intensity = int(pixel[1])
    blue_intensity = int(pixel[2])
    if (red_intensity + 10 > 255):
        red_intensity = red_intensity
    else:
        green_intensity = green_intensity + 10
    if (green_intensity + 10 > 255):
        green_intensity = green_intensity
    else:
        green_intensity = green_intensity + 10
    if (blue_intensity + 10 > 255):
        blue_intensity = blue_intensity
    else:
        blue_intensity = blue_intensity + 10
    return (red_intensity, green_intensity, blue_intensity)

def darkpixel(pixel):
    red_intensity = int(pixel[0])
    green_intensity = int(pixel[1])
    blue_intensity = int(pixel[2])
    if (red_intensity - 10 < 0):
        red_intensity = red_intensity
    else:
        green_intensity = green_intensity - 10
    if (green_intensity - 10 < 0):
        green_intensity = green_intensity
    else:
        green_intensity = green_intensity - 10
    if (blue_intensity - 10 < 0):
        blue_intensity = blue_intensity
    else:
        blue_intensity = blue_intensity - 10
    return (red_intensity, green_intensity, blue_intensity)


# channel: pixel -> channel -> pixel
# return a gray pixel with intensity from given channel of given pixel
def channel(pixel,chan):
    return (pixel[chan],pixel[chan],pixel[chan])


# inverse: pixel -> pixel
# return the color negative of the given pixel
def inverse(pixel):
    return (255-pixel[0], 255-pixel[1], 255-pixel[2])


# intensify: pixel -> nat255 -> pixel
# brighten each channel of pixel by quantity
def intensify(pixel,quantity):
    return (pixel[0]+quantity, pixel[1]+quantity, pixel[2]+quantity)


def invert(image_surf):

    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]

    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

def bw(image_surf):

    # get pixel dimensions of image
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]

    # get reference to and lock pixel array
    pixels3d = pg.surfarray.pixels3d(image_surf)

    # update pixels in place (side effect!)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = grayPixel(pixels3d[x,y])

def light(image_surf):
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    pixels3d = pg.surfarray.pixels3d(image_surf)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = lightpixel(pixels3d[x,y])

def dark(image_surf):
    rows = image_surf.get_size()[0]
    cols = image_surf.get_size()[1]
    pixels3d = pg.surfarray.pixels3d(image_surf)
    for x in range(rows):
        for y in range(cols):
            pixels3d[x,y] = darkpixel(pixels3d[x,y])
