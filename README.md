
# datefmt

A utility that takes a YYYY-MM-DD formated date and applies Golang's [time formatting](https://golang.org/pkg/time/#Time.Format).

## Examples

```
    datefmt "01/02/2006" "2016-07-02"
```

Outputs *07/02/2016*

```
    datefmt RFC822 "2016-07-02"
```

Outputs ** 
