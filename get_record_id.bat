@echo off
call getValue.bat email
call getValue.bat zone_id
call getValue.bat api_key
@echo on

curl -X GET "https://api.cloudflare.com/client/v4/zones/%zone_id%/dns_records/%record_id%" ^
	 -H "X-Auth-Email: %email%" ^
	 -H "X-Auth-Key: %api_key%" ^
	 -H "Content-Type: application/json" > dns_records.json
