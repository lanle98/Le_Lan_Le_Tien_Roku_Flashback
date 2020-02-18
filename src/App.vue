<template>
  <div id="app" class="container">
    <transition
      name="route-animation"
      enter-active-class="animated bounceInLeft"
      leave-active-class="animated bounceOutRight"
    >
      <router-view></router-view>
    </transition>
  </div>
</template>

<script>
export default {};
</script>

<style>
</style>
