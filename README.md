*Travel Architecture*

 An easy-to-use app to learn more about pre-modern architecture. Designed for travelers and students abroad who are curious what a particular building's architectural style is, but often don't have internet access and don't want to read through a Wikipedia article. 

The app is meant to be "easy", so it is heavily curated and distills each architectural era to one or two distinguishing features, assuming that most users are not interested in a textbook classification.

*About*

Travel Architecture covers pre-modern Western architecture, roughly spanning the time period from 850 B.C. to A.D. 1400. Selected photos from each major architectural style (classical, byzantine, romanesque, and gothic) were used to train a neural net, which is then applied to any new photo received. A confidence score is returned based on features detected in each photo. The architect then walks the user through each architectural style using a representative 3D model of a building that exemplifies the construction of that time period. 

Modern architecture (Renaissance and beyond) often sample the distinctive pre-modern styles, especially Classical. Later versions of this app will include classification for modern architecture. 

*Method of Use*

1. Select a photo from your gallery or take a photo using your camera
2. A computer vision model leverages a neural net to classify features in your photo and presents the top two architectural styles the model believes are present in the photo
3. Click on the architect icon
4. Choose a flat surface with good lighting and place an example building of the four pre-modern architectural styles available. 
5. Walk around the model or turn the model on screen to see the building from different angles and compare it to the building in your original photo.
6. Learn more about the era of the building and its historical context by clicking on the book icon 

*Neural Net*

This app utilizes Microsoft's custom vision services, available at https://www.customvision.ai/. The machine learning model comes packaged with each install of the application and does not reach out to any endpoints or services over the internet.

*Data Privacy and Security*

This app is entirely self-contained and does not access any public APIs or websites, nor does it collect or share user data. Camera permissions are required to analyze photos, but the app does not store any information whatsoever from your camera/gallery or otherwise.  

*License*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*Developer*

This app was developed by Ian Zhang, and you can find the code @ https://github.com/iZhang/travel-architecture

*Thank You*
To the 3D creators of the models used in this app, including KonZawad, arte gotico y romatico y neogotico, Photthawin, and giotis.