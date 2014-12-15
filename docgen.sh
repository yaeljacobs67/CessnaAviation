#! /bin/bash
appledoc \
   --project-name "CessnaAviation" \
   --project-company "Michael Baptist" \
   --company-id "com.mbaptist" \
   --docset-feed-url "https://github.com/mbaptist23/CessnaAviation" \
   --docset-package-url "https://github.com/mbaptist23/CessnaAviation" \
   --docset-fallback-url "https://github.com/mbaptist23/CessnaAviation" \
   --output "~/help" \
   --publish-docset \
   --logformat xcode \
   --keep-undocumented-objects \
   --keep-undocumented-members \
   --no-repeat-first-par \
   --ignore "LICENCE" \
   --index-desc "./README.md" \
   "."


