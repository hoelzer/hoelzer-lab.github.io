#!/bin/bash

# generate a github-like HTML
pandoc -s --toc -c pandoc.css --metadata pagetitle="A paper per day" papers.md -o papers.html
