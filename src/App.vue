<template>
  <div id="app">
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
</script>

<style>
</style>
