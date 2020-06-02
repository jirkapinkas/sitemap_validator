
# Sitemap Validator

This tool will crawl any sitemap.xml, validate, parse and check each URL, if a sitemap index is found it will be added for processing. 

It validates that each sitemaps.xml follows the XML schemas for sitemaps: http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd and for Sitemap index files: http://www.sitemaps.org/schemas/sitemap/0.9/siteindex.xsd

Then it check each URL and returns its HTTP response code, Time, Meta Robots, Cache Control. 

If any URL fails, Sitemap Validator fails as well.

This application is intended for running in CI/CD environment like Gitlab.

# Docker
```
docker run jirkapinkas/sitemap_validator /check_sitemap/main.py -s "https://www.sitemaps.org/sitemap.xml" -c 5
```

# Gitlab

```
check_sitemap:
  stage: check_sitemap
  image: jirkapinkas/sitemap_validator
  script:
    - /check_sitemap/main.py -s "https://www.sitemaps.org/sitemap.xml" -c 5
```

# Parameters
* -c to set the concurrency of workers.
* -d to set maximum sitemaps to process
* -o to output the results of each sitemap index into its own CSV file. 
* -q to display only failed results.

