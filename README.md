# CloudFlare_DDNS_Setter
[![Build Status](https://github.com/nanqinlang/SVG/blob/master/build%20passing.svg)](https://github.com/nanqinlang-script/CloudFlare_DNS_Record)
[![language](https://github.com/nanqinlang/SVG/blob/master/language-shell-blue.svg)](https://github.com/nanqinlang-script/CloudFlare_DNS_Record)
[![author](https://github.com/nanqinlang/SVG/blob/master/author-nanqinlang-lightgrey.svg)](https://github.com/nanqinlang-script/CloudFlare_DNS_Record)
[![license](https://github.com/nanqinlang/SVG/blob/master/license-GPLv3-orange.svg)](https://github.com/nanqinlang-script/CloudFlare_DNS_Record)

Script to set DDNS Record via [CloudFlare](https://www.cloudflare.com)


## config
you should write your configuration down to `config.ini` :
```python
# notice: the following interpretations("# ...") is not allowed in file "config.conf"
# do not write interpretations into config file

# the email address of your cloudflare account
email=

# the zone id of your cloudflare account
zone_id=

# the api key of your cloudflare account
api_key=

# the id of domain record you want to modify
# this id can be find via "get domain record_id" selection in the script
record_id=

# DNS record type
# valid values: A, AAAA
record_type=

# the domain you want to set
domain=

# ttl of record (seconds)
# min value:120
# max value:2147483647
ttl=
```

take a example, you should write like this:
```c
email=example@gmail.com
zone_id=3456dfdhfi465ff4ae263ef35esd060f
api_key=84058228se28e28898b6ds3ej78yuf2136654

record_id=1d3a9b54623334f3debc20c56eb5585c
record_type=AAAA
domain=example.example.net
ttl=120
```

## usage

### step 1
write those config down:
- email
- zone_id
- api_key
- record_type (if needing creating new record)
- domain (if needing creating new record)

### step 2
run this bat to **create new domain record**
```bash
create_record.bat
```

run this bat to **get domain record_id**  
```bash
get_record_id.bat
```

### step 3
continuously write those config down:
- record_id
- domain
- ttl

### step 4
after you finished step 1~3, you will need to run this :
```bash
update_record.bat
```
