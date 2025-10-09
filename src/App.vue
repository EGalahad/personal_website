<template>
  <v-app>
    <v-main class="app-shell">
      <HomeView />
    </v-main>
  </v-app>
</template>

<script setup>
import HomeView from './views/Home.vue';
</script>

<style scoped>
.app-shell {
  background: #ffffff;
  min-height: 100vh;
}
</style>
