import whois
from apify import Actor

async def main():
    async with Actor:
        # Get input from Apify (expects { "domains": ["example.com", ...] })
        input_data = await Actor.get_input() or {}
        domains = input_data.get('domains', [])
        results = []
        for domain in domains:
            try:
                w = whois.whois(domain)
                results.append({
                    'domain': domain,
                    'whois': w.text if hasattr(w, 'text') else str(w)
                })
            except Exception as e:
                results.append({
                    'domain': domain,
                    'error': str(e)
                })
        # Save results to Apify dataset
        await Actor.push_data(results)

if __name__ == '__main__':
    import asyncio
    asyncio.run(main()) 