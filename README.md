# Whois Lookup Scraper

## Overview
This Apify actor retrieves Whois information for a list of domains provided as input. It is built with Python and leverages the `whois` library to perform lookups. The results are output to the Apify dataset, making it easy to automate bulk Whois data collection for research, monitoring, or reporting purposes.

## Features
- Bulk Whois lookups for multiple domains
- Error handling for domains that cannot be resolved
- Outputs structured results to Apify dataset
- Each output row includes the domain, all parsed Whois fields (such as registrar, creation date, expiry date, etc.), and an error column
- Can be run locally or on the Apify platform

## Input Example
Provide a JSON object with a list of domains:
```json
{
  "domains": [
    "example.com",
    "apify.com",
    "github.com"
  ]
}
```

## Output Example
Each result in the Apify dataset will look like (fields may vary by domain, but commonly include):
```json
{
  "domain": "apify.com",
  "registrar": "Amazon Registrar, Inc.",
  "registrar_url": "http://registrar.amazon.com",
  "registrar_whois_server": "whois.registrar.amazon",
  "registrar_abuse_contact_email": "trustandsafety@support.aws.com",
  "registrar_abuse_contact_phone": "+1.2024422253",
  "creation_date": "2009-06-02T17:14:10Z",
  "updated_date": "2025-04-28T17:18:37Z",
  "expiration_date": "2026-06-02T17:14:10Z",
  "domain_status": [
    "clientDeleteProhibited",
    "clientTransferProhibited",
    "clientUpdateProhibited"
  ],
  "name_servers": [
    "NS-1225.AWSDNS-25.ORG",
    "NS-1928.AWSDNS-49.CO.UK",
    "NS-449.AWSDNS-56.COM",
    "NS-839.AWSDNS-40.NET"
  ],
  "dnssec": "unsigned",
  "registrant_name": "On behalf of apify.com owner",
  "registrant_organization": "Identity Protection Service",
  "registrant_email": "f7d6627d-09a8-4e50-ab79-77a1447108fc@identity-protect.org",
  "registrant_country": "GB",
  "tech_name": "On behalf of apify.com owner",
  "tech_organization": "Identity Protection Service",
  "tech_email": "f7d6627d-09a8-4e50-ab79-77a1447108fc@identity-protect.org",
  "tech_country": "GB",
  "error": ""
}
```
If a lookup fails, the result will include only the domain and error:
```json
{
  "domain": "nonexistentdomain.tld",
  "error": "No match for domain..."
}
```

**Note:** The actual fields may vary depending on the domain and the Whois server response. The actor attempts to extract as many standard fields as possible for each domain.

## Usage

### On Apify Platform
1. Deploy the actor to your Apify account.
2. Provide your input (list of domains) in the actor's input UI or via API.
3. Run the actor. Results will be available in the Apify dataset tab, with each Whois field as a separate column.

---
This actor is ideal for automating domain research and monitoring tasks at scale. For advanced features or integration, feel free to extend the codebase. 
