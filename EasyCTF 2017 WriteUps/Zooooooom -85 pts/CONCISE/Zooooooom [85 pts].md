**Category:** Forensics

**Points:** 85

**Description:** Hekkerman is looking awfully spooky. That hekker glare could pierce a firewall. What can he see that you can't?

## Write Up

We are given this image from the description:

<img src="d9040024afd9d38b73c72e30f722cf09e1093e3c_hekkerman.jpg" width="521" />

We used a tool called "binwalk" that analyzes file contents. Binwalk can be found here: https://github.com/devttys0/binwalk

<img src="bin walk results.png" width="450" />

After running binwalk on the image, we found 3 instances of JPEG image data in the file itself.

From the discoveries, the next plan was to view the image more in-depth using free online photo forensic sites. The one we used was: http://exif.regex.info/exif.cgi

Putting in the original Hekkerman image file revealed a thumbnail that was quite different from the original image.

<img src="screenshot.png" width="521" />


