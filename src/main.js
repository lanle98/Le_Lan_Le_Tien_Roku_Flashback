import Vue from "vue";
import VueCookies from 'vue-cookies'

import App from "./App.vue";
import VueRouter from "vue-router";
import Login from "./components/Login.vue";
import Signup from "./components/Signup.vue";
import Browse from "./components/Browse.vue";

Vue.config.productionTip = false;
Vue.use(VueCookies)
Vue.use(VueRouter);
const routes = [
  { path: "/login", name: "login", component: Login },
  { path: "/signup", name: "signup", component: Signup },
  { path: "/browse", name: "who", component: Browse },

  { path: "/", redirect: "/login" }
];

const router = new VueRouter({
  routes,
  mode: "history"
});

new Vue({

  render: h => h(App),
  router
}).$mount("#app");
