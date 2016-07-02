
# timefmt

Formats timestamps based on Golang's [time formatting](https://golang.org/pkg/time/#Time.Format).

## Examples

```
    timefmt -input "2006-01-02" -output "01/02/2006" "2016-07-02"
```

Outputs *07/02/2016*

```
    timefmt -input mysql -output RFC822 "2016-07-02T08:08:08 -0700"
```

Outputs ** 

