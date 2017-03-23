**Category:** Forensics

**Points:** 85

**Description:** Hekkerman is looking awfully spooky. That hekker glare could pierce a firewall. What can he see that you can't?

**Hint:** Sometimes there's more than meets the eye.

## Write Up

We are given this image from the description:

<img src="d9040024afd9d38b73c72e30f722cf09e1093e3c_hekkerman.jpg" width="521" />

We used a tool called "binwalk" that analyzes file contents. Binwalk can be found here: https://github.com/devttys0/binwalk

After running binwalk on the image, we found 3 instances of JPEG image data in the file itself.

<img src="bin walk results.png" width="450" />

From the discoveries, the next plan was to view the image more in-depth using free online photo forensic sites. The one we used was: http://exif.regex.info/exif.cgi

Putting in the original Hekkerman image file revealed a thumbnail that was quite different from the original image.

<img src="screenshot.png" width="900" />

After this discovery, we decided to save the **thumbnail image** itself and upload it back onto the website.

After doing so, we were presented with a new thumbnail that included the flag.

<img src="screenshot2.png" width="900" />

The flag is: easyctf{d33p_zo0m_HeKker_2c1ae5}


