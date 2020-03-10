<template>
  <section class="wrapper vh-100 d-flex align-items-center">
    <div class="container user-selections">
      <h2>Who's watching?</h2>
      <div class="users row m-5">
        <div
          class="user-avatar my-3 col-md-3"
          v-for="(user,index) in users"
          :key="user.id"
          @click.prevent="getUserInfo(index)"
        >
          <img :src="'images/users/'+ user.avatar" class alt="avatar" />
          <h3 class="h5 p-2">{{user.name}}</h3>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  data() {
    return {
      users: {}
    };
  },
  mounted() {
    fetch("https://lanle-cms-heroku.herokuapp.com/admin/admin_users.php")
      .then(res => res.json())
      .then(data => (this.users = data.users));
  },
  methods: {
    getUserInfo(index) {
      console.log(index);
      this.$emit("userInfo", this.users, index);
    }
  }
};
</script>