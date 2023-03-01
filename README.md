# WordPress to Hugo Exporter Script

Hugo a static site generator written in Bash

This repo is utilizes [https://github.com/SchumacherFM/wordpress-to-hugo-exporter](https://github.com/SchumacherFM/wordpress-to-hugo-exporter)

## Features

One-script install and complelation of WordPress plugin that converts all posts, pages, taxonomies, metadata, and settings to Markdown and YAML which can be dropped into Hugo.

## Requirements

- Ubuntu
- Must have wordpress directory installed at '**/var/www/wordpress/**'

## Usage

Simply run the script and output will appear in home directory '**~/hugo-export/**' :

	chmod 777 ./wp-to-hugo-export.sh
	sudo ./wp-to-hugo-export.sh
## Output

Your output will look simialr to:

	├── hugo-export
	│   ├── config.yaml
	│   ├── posts
	│   │   └── 2023-03-01-hello-world.md
	│   ├── privacy-policy
	│   │   └── index.md
	│   ├── sample-page
	│   │   └── index.md
	│   └── wp-content
	│       └── uploads
	│           └── 2023
	│               └── 03
	│                   ├── 0_720-150x150.jpg
	│                   ├── 0_720-300x169.jpg
	│                   ├── 0_720-768x432.jpg
	│                   ├── 0_720.jpg
	│                   ├── 300987511_413174977580771_2994087196777105680_n-150x150.jpg
	│                   ├── 300987511_413174977580771_2994087196777105680_n-300x300.jpg
	│                   └── 300987511_413174977580771_2994087196777105680_n.jpg


## Questions

For all of questions please open an **[Issue](https://github.com/israellandes/wp-to-hugo-exporter/issues)** and I'd be happy to help.
