#!/bin/bash

# Ensure output directory exists
mkdir -p scripts/output

echo "🔍 Running ESLint on .vue files..."
npx eslint . --ext .ts,.vue > scripts/output/eslint_output.txt

echo "⚡ Running Oxlint on .ts files..."
npx oxlint src --config oxlintrc.json > scripts/output/oxlint_output.txt

echo ""
echo "📊 Comparison Summary:"
echo "----------------------"
echo "ESLint Found $(tail -2 scripts/output/eslint_output.txt | head -1)"
echo "Oxlint $(tail -2 scripts/output/oxlint_output.txt | head -1)"

echo ""
echo "✅ Outputs saved to:"
echo " - scripts/output/eslint_output.txt"
echo " - scripts/output/oxlint_output.txt"
