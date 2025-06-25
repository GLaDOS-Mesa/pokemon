export function greet(name: string) {
  const unused = 123;           // 🔧 unused variable
  console.log("Hello", name);   // ⚠️ console.log (by rules)
}