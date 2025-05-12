# Whois Lookup Scraper (Python)

This Apify actor takes a list of domains and returns their Whois info using Python.

## Usage

1. **Input**: Provide a JSON object with a `domains` array, e.g.:
   ```json
   {
     "domains": ["example.com", "apify.com"]
   }
   ```

2. **Output**: The actor will output Whois information for each domain to the Apify dataset.

## Local Development

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the script:
   ```bash
   python main.py
   ```
   You can modify the script to test with local input.

## Deploy to Apify

1. Push the actor to Apify:
   ```bash
   apify push
   ```
2. Run the actor on the Apify platform with your list of domains.

## Notes
- Uses the [whois](https://pypi.org/project/whois/) Python package for lookups.
- Handles errors gracefully and returns them in the output. 