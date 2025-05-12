# Whois Lookup Scraper (Python)

## Overview
This Apify actor retrieves Whois information for a list of domains provided as input. It is built with Python and leverages the `whois` library to perform lookups. The results are output to the Apify dataset, making it easy to automate bulk Whois data collection for research, monitoring, or reporting purposes.

## Features
- Bulk Whois lookups for multiple domains
- Error handling for domains that cannot be resolved
- Outputs structured results to Apify dataset
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
Each result in the Apify dataset will look like:
```json
{
  "domain": "example.com",
  "whois": "...raw whois text or parsed info..."
}
```
If a lookup fails, the result will include an error:
```json
{
  "domain": "nonexistentdomain.tld",
  "error": "No match for domain..."
}
```

## Usage

### On Apify Platform
1. Deploy the actor to your Apify account.
2. Provide your input (list of domains) in the actor's input UI or via API.
3. Run the actor. Results will be available in the Apify dataset tab.


---
This actor is ideal for automating domain research and monitoring tasks at scale. For advanced features or integration, feel free to extend the codebase. 
