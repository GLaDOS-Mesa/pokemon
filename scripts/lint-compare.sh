#!/bin/bash

# Ensure output directory exists
mkdir -p scripts/output

echo "🔍 Running ESLint on .vue files..."
npx eslint 'src/**/*.vue' > scripts/output/eslint_output.txt

echo "⚡ Running Oxlint on .ts files..."
npx oxlint 'src' > scripts/output/oxlint_output.txt

echo ""
echo "📊 Comparison Summary:"
echo "----------------------"
echo "ESLint found $(grep -c '^' scripts/output/eslint_output.txt) issues."
echo "Oxlint found $(grep -c '^' scripts/output/oxlint_output.txt) issues."

echo ""
echo "✅ Outputs saved to:"
echo " - scripts/output/eslint_output.txt"
echo " - scripts/output/oxlint_output.txt"
