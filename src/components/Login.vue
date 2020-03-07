<template>
  <div class="container-fluid login-page wrapper m-auto text-center vh-100 w-100">
    <div class="h-50">
      <img class="img-fluid logo" alt="logo" src="images/Roku-Flashback-Logo.svg" />
      <form class="w-75 mx-auto text-center container" method="post">
        <div class="input username my-5 text-left">
          <i class="far fa-user"></i>
          <input
            class="w-100 text-center"
            v-model="username"
            name="username"
            type="text"
            placeholder="username..."
          />
        </div>
        <div class="input password my-5 text-left">
          <i class="fas fa-key"></i>
          <input
            class="w-100 text-center"
            v-model="password"
            name="password"
            type="password"
            placeholder="password..."
          />
        </div>
        <p>{{this.message}}</p>
        <button @click.prevent="userLogin" class="btn btn-primary my-5 text-center px-5 py-2">LOGIN</button>
      </form>

      <p>
        New User?
        <router-link to="/signup">Sign up</router-link>
      </p>
      <a href="#">Help?</a>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return { username: "", password: "", message: "" };
  },
  methods: {
    userLogin() {
      let url = "/server/admin/admin_login.php";

      let formData = new FormData();

      formData.append("user_name", this.username);
      formData.append("user_pass", this.password);

      fetch(url, {
        method: "POST",
        body: formData
      })
        .then(res => res.json())
        .then(data => {
          this.message = data;

          if (data === "Login successful") {
            window.location.href = "/browse";
          }
        })
        .catch(err => console.log(err));
    }
  }
};
</script>

<style>
</style>
