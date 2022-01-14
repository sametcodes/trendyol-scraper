## on CLI

#### One-line command

```
curl -sL https://trendyol.com/brand/product-p-[SKU] | tr '\r\n' ' ' | grep -oP "\{(?:[^{}]|(?R))*\}" | grep 'alternativeVariants' | sed -s 's/<[^>]*>//g' | jq -c .product
```

#### Dependencies

- curl
- grep (GNU grep) 3.7 (_BSD version is not compatible_)
- sed (GNU sed) 4.8
- jq-1.6


## Try it on docker

```bash
docker container run -it --rm sametcodes/tyolscraper SKU
```

### Todos

- [x] dockerfile
- [ ] js export
