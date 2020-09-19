import Vue from 'vue'
import VueRouter from 'vue-router'
import Me from '../views/Me.vue'
import Register from '../views/Register.vue'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Index
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/me',
    component: Me
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
