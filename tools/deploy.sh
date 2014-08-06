#!/bin/bash
mkdir -p ../prod/css
# mkdir -p ../prod/js
cp -r ../files ../prod/
cp -r ../js ../prod/
cp -r ../fonts ../prod/
cp -r ../images ../prod/
cp ../index.html ../prod/
cp -r ../modals ../prod/
cp -r ../css/images ../prod/
cp -r ../css/ie ../prod/css/
cp ../css/font-awesome.min.css ../prod/css/

yuicompressor ../css/bootstrap.css > ../prod/css/bootstrap.min.css
yuicompressor ../css/skel.css > ../prod/css/skel.min.css
yuicompressor ../css/style-1000px.css > ../prod/css/style-1000px.min.css
yuicompressor ../css/style-desktop.css > ../prod/css/style-desktop.min.css
yuicompressor ../css/style-mobile.css > ../prod/css/style-mobile.min.css
yuicompressor ../css/style.css > ../prod/css/style.min.css

cd ../prod/
sed -i.bak s/bootstrap.css/bootstrap.min.css/g index.html
sed -i.bak s/skel.css/skel.min.css/g index.html
sed -i.bak s/style-1000px.css/style-1000px.min.css/g index.html
sed -i.bak s/style-desktop.css/style-desktop.min.css/g index.html
sed -i.bak s/style-mobile.css/style-mobile.min.css/g index.html
sed -i.bak s/style.css/style.min.css/g index.html

cd ../prod/js
sed -i.bak s/style-1000px.css/style-1000px.min.css/g init.js
sed -i.bak s/style-desktop.css/style-desktop.min.css/g init.js
sed -i.bak s/style-mobile.css/style-mobile.min.css/g init.js
sed -i.bak s/style.css/style.min.css/g init.js