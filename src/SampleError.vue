<template>
  <div>{{ message }}</div>
</template>

<script lang="ts">
export default {
  data() {
    return {
      message: "Hello Vue!",
      unusedVar: 42              // 🔧 unused variable
    };
  },
  mounted() {
    console.log("Mounted");     // ⚠️ console.log
  }
};
</script>
