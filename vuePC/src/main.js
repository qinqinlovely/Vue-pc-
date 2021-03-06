import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import store from "./store";
import axios from "axios";

import MintUI from "mint-ui";
import "mint-ui/lib/style.min.css";

import Vant, { Icon } from "vant";
import "vant/lib/index.css";
import "./assets/myicon/form/iconfont.css";

import qs from "qs";
axios.defaults.baseURL = "http://127.0.0.1:3000";
Vue.prototype.axios = axios;
Vue.config.productionTip = false;

Vue.use(MintUI);
Vue.use(Vant);
Vue.use(Icon);
Vue.use(router);

new Vue({
  router,
  store,
  render: (h) => h(App),
}).$mount("#app");
