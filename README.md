# captcha-solver
A solution for tackling captcha when collecting data from Amazon.

Mostly based on - [Break a captcha system](https://medium.com/@ageitgey/how-to-break-a-captcha-system-in-15-minutes-with-machine-learning-dbebb035a710). I have added some of my own modifications and additions to it, according to my use case.


The goal is to solve the captcha images from Amazon. Sample captcha image can be seen below -

![a sample captcha image](https://github.com/HRN-Projects/captcha-solver/blob/main/test_captchas/Captcha_iwhygarbwz.jpg)

The current model file is built after training some 4K training set captcha images.
Training can performed on much more larger dataset for better results, but current results aren't bad either :wink:.
