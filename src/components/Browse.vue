<template>
  <div id="app">
    <transition-group
      name="route-animation"
      enter-active-class="animated bounceInLeft"
      leave-active-class="animated bounceOutRight"
    >
      <Home
        v-if="isWatching"
        @isNotWatching="isNotWatching"
        :isWatching="isWatching"
        :userInfo="userInfo"
        :key="userInfo.name"
      />
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
      isWatching: false
    };
  },
  methods: {
    getUserInfo(info, index) {
      this.userInfo = info[index];
      this.isWatching = true;
      // window.location.href = "/home?user=" + this.userInfo.authority;
    },
    isNotWatching(status) {
      this.isWatching = status;
    }
  }
};
</script>

<style>
</style>
