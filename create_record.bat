@echo off
call getValue.bat email
call getValue.bat zone_id
call getValue.bat api_key
call getValue.bat record_type
call getValue.bat domain
call getValue.bat ttl
call getValue.bat dynamic_ip
@echo on

curl -X POST "https://api.cloudflare.com/client/v4/zones/%zone_id%/dns_records" ^
	 -H "X-Auth-Email: %email%" ^
	 -H "X-Auth-Key: %api_key%" ^
	 -H "Content-Type: application/json" ^
	 --data "{\"type\":\"%record_type%\", \"name\":\"%domain%\", \"content\":\"%dynamic_ip%\", \"ttl\":%ttl%, \"proxied\":false}"
