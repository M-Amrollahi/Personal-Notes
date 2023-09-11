## read image
flags: one of  IMREAD_COLOR|1, IMREAD_GRAYSCALE|0, IMREAD_UNCHANGED|-1
```
img = cv2.readimg("image.jpg", flags)
```

## save image
```
cv2.imwrite('output.jpg', img)
```

## convert to ...
```
# to RGB
rgb_image = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
# To HSV
hsv_image = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
```

## plot image
```
plt.imshow(img)
plt.imshow(img, cmap='gray')
```

## split channels
```
b,g,r = cv2.split(img)
```

## merge channels
```
merged = cv2.merge([b, g, r])
```

## reize image
```
bg_image = cv2.resize(bg_image,(w, h))
```

## bitwise_ops
```
cv2.bitwise_and,cv2.bitwise_or,cv2.bitwise_xor,cv2.bitwise_not
```

## circle, rectangle,line
```
cv2.cirlce(image, center, radius, color, thickness)
cv2.rectangle(image, starting vertex, opposite vertex, color, thickness)
cv2.line(image, starting cordinates, ending cordinates, color, thickness)

cv2.polylines(image, [pts], True, (0,0,255), 3)
```

## image dtypes
- If the image is 8-bit unsigned, it is displayed as is.
- If the image is 16-bit unsigned or 32-bit integer, the pixels are divided by 256. That is, the value range [0,255*256] is mapped to [0,255].
- If the image is 32-bit floating-point, the pixel values are multiplied by 255. That is, the value range [0,1] is mapped to [0,255].

## arithmatic ops
```
cv2.addWeighted(src1, alpha, src2, beta, gamma)
added = cv2.add(image, M)
subtracted = cv2.subtract(image, M)
```

## adjust brightness (gamma correction)
```
lookUpTable = np.empty((1,256), np.uint8)

for i in range(256):
    lookUpTable[0,i] = np.clip(pow(i / 255.0, gamma) * 255.0, 0, 255)
out = cv2.LUT(img_original, lookUpTable)

```

## thresholding
```
# Values below 127 goes to 0 (black, everything above goes to 255 (white)
# Values below 127 goes to 0 (black, everything above goes to 255 (white)
ret1,thresh1 = cv2.threshold(image, 127, 255, cv2.THRESH_BINARY)

# Values below 127 go to 255 and values above 127 go to 0 (reverse of above)
ret2,thresh2 = cv2.threshold(image, 127, 255, cv2.THRESH_BINARY_INV)

# Values above 127 are truncated (held) at 127 (the 255 argument is unused)
ret3,thresh3 = cv2.threshold(image, 127, 255, cv2.THRESH_TRUNC)

# Values below 127 go to 0, above 127 are unchanged  
ret4,thresh4 = cv2.threshold(image, 127, 255, cv2.THRESH_TOZERO)

# Resever of above, below 127 is unchanged, above 127 goes to 0
ret5,thresh5 = cv2.threshold(image, 127, 255, cv2.THRESH_TOZERO_INV)

# otsu
ret2,th2 = cv.threshold(img,0,255,cv.THRESH_BINARY+cv.THRESH_OTSU)

# adaptive thresholding
output2 = cv2.adaptiveThreshold(original_image,255,cv2.ADAPTIVE_THRESH_MEAN_C, cv2.THRESH_BINARY,11,2)
output3 = cv2.adaptiveThreshold(original_image,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C, cv2.THRESH_BINARY,11,2)
```

## morphological ops
```
image = cv2.imread('images/opencv_inv.png', 0)

# Let's define our kernel size
kernel = np.ones((5,5), np.uint8)

erosion = cv2.erode(image, kernel, iterations = 1)
dilation = cv2.dilate(image, kernel, iterations = 1)
opening = cv2.morphologyEx(image, cv2.MORPH_OPEN, kernel)
closing = cv2.morphologyEx(image, cv2.MORPH_CLOSE, kernel)
```

## get structural shapes (ready shapes like cross+)
```
kernel = cv2.getStructuringElement(cv2.MORPH_CROSS, (5, 5), (2, 2))
```

## find connected components
```
num_labels, labels = cv2.connectedComponents(img)
```


## find and draw contours
```
contours, hierarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
all_contours = cv2.drawContours(bgr_image, contours, -1, (0,255,0), 3)
```

## contour bounding box
```
contours, _ = cv2.findContours(closing, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

for c in contours:
    boundRect = cv2.boundingRect(c)
    cv2.rectangle(drawing, (int(boundRect[0]), int(boundRect[1])), \
  (int(boundRect[0]+boundRect[2]), int(boundRect[1]+boundRect[3])), (0,255,255), 2)
```

## calculate area with contour
```
for cnt in contours:
    area = cv2.contourArea(cnt)
```

## filter with color
```
mask = cv2.inRange(hsv, l_green, u_green)
```
