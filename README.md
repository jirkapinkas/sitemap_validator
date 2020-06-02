
# Sitemap Validator

This tool will crawl any sitemap.xml, validate, parse and check each URL, if a sitemap index is found it will be added for processing. 

It validates that each sitemaps.xml follows the XML schemas for sitemaps  http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd and for Sitemap index files http://www.sitemaps.org/schemas/sitemap/0.9/siteindex.xsd

Then it check each URL and return its HTTP response code, Time, Meta Robots, Cache Control. 

If any URL fails, Sitemap Validator fails as well.

# Docker
```
docker run -v ${PWD}:/tmp/ jirkapinkas/sitemap_validator -s "https://www.sitemaps.org/sitemap.xml" -c 5
```

# Parameters
* -c to set the concurrency of workers.
* -d to set maximum sitemaps to process
* -o to output the results of each sitemap index into its own CSV file. 
* -q to display only failed results.

