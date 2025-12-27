# Donyaye Sokhan Magazine Downloader

Download PDF issues of [Donyaye Sokhan](https://donyayesokhan.com) magazine.

## Features

- Scrapes all magazine issues from paginated listing pages
- Extracts PDF download URLs from individual issue pages
- Downloads PDFs with original Persian filenames
- Skips already downloaded files (safe to run multiple times)
- Continues on errors, reports failures at the end

## Installation

Requires Python 3.11+ and [Poetry](https://python-poetry.org/).

```bash
# Clone the repository
git clone https://github.com/dbosk/donyasokhan.git
cd donyasokhan

# Install dependencies
poetry install

# Generate Python from literate source
make
```

## Usage

```bash
# Download to current directory
poetry run donyasokhan

# Download to specific directory
poetry run donyasokhan -o downloads/
```

## Literate Programming

This project is written as a [literate program](https://en.wikipedia.org/wiki/Literate_programming) using [noweb](https://www.cs.tufts.edu/~nr/noweb/). The source file `donyasokhan.nw` contains both documentation and code.

```bash
# Generate Python script
make donyasokhan.py

# Generate PDF documentation
make donyasokhan.pdf

# Generate both
make
```

## License

MIT
