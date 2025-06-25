import fs from 'fs';
import chalk from 'chalk';

// Read output files from ESLint and Oxlint
const eslintFile = 'scripts/output/eslint_output.txt';
const oxlintFile = 'scripts/output/oxlint_output.txt';

const eslintOutput = fs.existsSync(eslintFile) ? fs.readFileSync(eslintFile, 'utf-8').split('\n') : [];
const oxlintOutput = fs.existsSync(oxlintFile) ? fs.readFileSync(oxlintFile, 'utf-8').split('\n') : [];

const eslintSet = new Set(eslintOutput.filter(Boolean));
const oxlintSet = new Set(oxlintOutput.filter(Boolean));

console.log(chalk.bold('\n🔍 Visual Comparison of ESLint vs Oxlint\n'));

const allMessages = new Set([...eslintSet, ...oxlintSet]);

allMessages.forEach(msg => {
  const inESLint = eslintSet.has(msg);
  const inOxlint = oxlintSet.has(msg);

  if (inESLint && inOxlint) {
    console.log(chalk.green('✅ Common: ') + msg);
  } else if (inESLint) {
    console.log(chalk.red('🟥 Only ESLint: ') + msg);
  } else if (inOxlint) {
    console.log(chalk.blue('🟦 Only Oxlint: ') + msg);
  }
});

console.log('\n');
