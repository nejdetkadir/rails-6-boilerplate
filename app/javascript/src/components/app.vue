<template>
  <p>{{ message }}</p>
</template>

<script>
export default {
  computed: {
    message() {
      return this.$store.state.message
    }
  }
}
</script>
