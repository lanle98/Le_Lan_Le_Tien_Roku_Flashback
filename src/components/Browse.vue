<template>
  <div id="app">
    <transition-group
      name="route-animation"
      enter-active-class="animated bounceInLeft"
      leave-active-class="animated bounceOutRight"
    >
      <Home v-if="status" :userInfo="userInfo" :key="userInfo.name" />
      <UserSelections v-else @userInfo="getUserInfo" :key="2" />
    </transition-group>
  </div>
</template>

<script>
import Home from "./browse_components/Home";
import UserSelections from "./browse_components/UserSelections";
export default {
  components: { Home, UserSelections },
  data() {
    return {
      userInfo: null,
      status: false
    };
  },
  methods: {
    getUserInfo(info, index) {
      this.userInfo = info[index];
      this.status = true;
      // window.location.href = "/home?user=" + this.userInfo.authority;
    }
  }
};
</script>

<style>
</style>
