---
Title: Invoice
---

````bash
bash <(sed -n '/```bash/,/```/ {/```/!p;}' projects/neuewege/tpl-invoice.md)
````

```bash {#render-00}
# @render
echo hello
```

<output for="render-00"></output>
