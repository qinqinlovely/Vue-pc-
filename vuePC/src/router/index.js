import Vue from "vue";
import VueRouter from "vue-router";
import Me from "../views/Me.vue";
import Register from "../views/Register.vue";
import Index from "../views/Index.vue";
import Search from "../views/Search.vue";
import Category from "../views/Category.vue";
import Brand from "../views/Brand.vue";
import Cart from "../views/Cart.vue";
import aaa from "../views/aaa.vue";
import b from "../views/b.vue";
import c from "../views/c.vue";
import xiangshui from "../components/categories/xiangshui.vue";
import Detail from "../views/Detail.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/cart",
    component: Cart,
  },
  {
    path: "/brand",
    component: Brand,
  },
  {
    path: "/category",
    component: Category,
    redirect:{name:"aaa"},  
    children:[
      {
        path:"/",
        name:"aaa",
        component:aaa,
        meta:{
          title:"页面aaa"
        }
      },
      {
        path:"/b",
        name:"b",
        component:b,
        meta:{
          title:"页面b"
        }
      },
      {
        path:"/c",
        name:"c",
        component:c,
        meta:{
          title:"页面c"
        }
      },
    ]
  },
  {
    path: "/search",
    component: Search,
  },
  {
    path: "/",
    component: Index,
  },
  {
    path: "/register",
    component: Register,
  },
  {
    path: "/me",
    component: Me,
  },
  {
    path: "/categories/xiangshui",
    component: xiangshui,
  },
  {
    path: "/detail",
    component: Detail,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
