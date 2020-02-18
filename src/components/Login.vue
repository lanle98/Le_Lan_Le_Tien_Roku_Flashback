<template>
  <div class="container login-page m-auto text-center vh-100">
    <h2>Cinemagic</h2>
    <form method="post" class="w-75 mx-auto text-center">
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
      <button @click.prevent="userLogin" class="btn btn-primary my-5 text-center px-5 py-2">Log In</button>
    </form>

    <p>
      New User?
      <router-link to="/signup">Sign up</router-link>
    </p>
    <a href="#">Help?</a>
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

          if (data === "Login success") {
            window.location.href = "home";
          }
        })
        .catch(err => console.log(err));
    }
  }
};
</script>

<style>
.input {
  border-bottom: 2px solid;
  background: none;
  position: relative;
}
.input input {
  border: none;
  background-color: none !important;

  outline: none;
  left: 0;
}

i {
  position: absolute;
}

.login-page {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}
button {
  border-radius: 40px !important;
}
li {
  list-style-type: none;
} /*# sourceMappingURL=main.css.map */
</style>
