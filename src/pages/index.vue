<template>
  <div class="maintenance-container">
    <h1>Under Maintenance</h1>
    <p>We apologize for the inconvenience. Please check back later.</p>
  </div>
</template>

<script>
export default {
  name: 'MaintenancePage',
}
</script>

<style scoped>
.maintenance-container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: #f0f2f5;
  text-align: center;
}
h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
}
</style>