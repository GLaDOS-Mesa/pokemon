# Vue 3 Pokémon Filter 🧪🔍

This is a simple Vue 3 + TypeScript project that displays a list of Pokémon and allows filtering them by type.

## 🚀 Features

- 🧑‍💻 Written in **TypeScript**
- ⚡ Built with **Vite**
- 🧹 Linted with **ESLint** and **Oxlint**
- 🔎 Filterable Pokémon list

## 📦 Setup

```bash
npm install
npm run dev
chmod +x scripts/lint-compare.sh
```

## 🧠 Example
Try filtering by type to see how the app reacts.


## 🧪 Compare ESlint and OXlint
```bash
./scripts/lint-compare.sh
```

Output results:
- scripts/output/eslint_output.txt
- scripts/output/oxlint_output.txt

## 🪄 Linting

Run ESLint:

```bash
npm run lint
```

Run Oxlint:

```bash
npm run lint:oxlint
```

## 🔬 Lint Comparison

| Feature                  | ESLint         | Oxlint       |
|--------------------------|----------------|--------------|
| Vue Template Support     | ✅                   | ❌ Not supported yet           | TODO add link next support
| TypeScript Support       | ✅                   | ✅            |
| Performance              | 🐢 Slower            | ⚡ Super fast |
| Plugins & Ecosystem      | ✅ Rich              | ❌ Limited    |
| Configuration            | ❌ Node dependency   | ✅ Easy    |
| Community                | ✅ Large             | ❌ Young    |
| Plugin and Rules         | ✅ Huge              | ❌ Young    |

### Performance
| Tool    | Average Time (TS, 100 file) |
|---------|----------------------------------------|
| ESLint  | ~3.5s                                  |
| Oxlint  | **~0.15s**                             |

### Configurations

#### ESLint
```js
// .eslintrc.js - JS flexible
module.exports = {
  extends: ['eslint:recommended'],
  rules: {
    'no-unused-vars': 'warn',
  }
}
```

#### Oxlint
```json
// oxlint.json - JSON simple and direct
{
  "rules": {
    "no-unused-vars": "warn"
  }
}
```

## 🧭 When ESLint or Oxlint?

### 🛠️ ESLint:
- Vue, TS, ecc.
- Custom Rules
- Production Projects

### ⚡ Oxlint:
- Linter **ultrafast**
- Starting a new project

## QubicaAMF
### 🤐 TODAY ESLint suggested
- Support for `eslint-plugin-vue`
- Advanced rules for `<template>`, `<script setup>`

## 🚀 TOMORROW ESLint + Oxlint Mini Support Plan
Oxlint works with our previous .eslintignore file.

### 1️⃣ Setup Oxlint
```bash
npm i -D oxlint
```

### 2️⃣ Script in `package.json`
```json
"scripts": {
  "lint:fast": "oxlint src"
}
```

### 3️⃣ Editor Integration
- Use it in `lint-staged` o `husky`
- Add it in CI as a pre-build step

### 4️⃣ Then
- Collect feedback
- Match errror between ESlint and Oxlint

### Q&A
> Oxlint support custom plugin?
**NO.**

> Can I use all the ESLint rules?
**NO.**

> It has a giant community?
**NO.**

> So why should i use it?
**It's still coll.**

Made with ❤️ for Monthly.js purposes.