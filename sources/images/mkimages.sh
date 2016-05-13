rm ../_static/*
#for img in *.jpg; do 
#    size=$(identify $img | grep -o -w -E "[0-9]+x[0-9]+" | cut -f1 -d"x"); 
#    if [[ "$size" =~ ^1080.* ]]  ; then 
#        convert $img -resize 800x ../_static/$img; 
#    else 
#        cp $img ../_static/; 
#    fi
#done

convert web_hi_res_512.png -bordercolor white -border 0 \
  \( -clone 0 -resize 16x16 \) \
  \( -clone 0 -resize 32x32 \) \
  \( -clone 0 -resize 48x48 \) \
  \( -clone 0 -resize 64x64 \) \
  -delete 0 -alpha off -colors 256 ../_static/favicon.ico
  
convert web_hi_res_512.png -resize 114x ../_static/apple-touch-icon-precomposed.png
