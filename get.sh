curl -sL https://trendyol.com/brand/product-p-$1 | tr '\r\n' ' ' | grep -oP "\{(?:[^{}]|(?R))*\}" | grep 'alternativeVariants' | sed -s 's/<[^>]*>//g' | jq -c .product
