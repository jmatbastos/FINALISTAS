import { createRouter, createWebHistory } from 'vue-router'
import Home from '@/views/Home.vue'
import Jobs from '@/views/Jobs.vue'
import Register from '@/views/Register.vue'
import Message from '@/views/Message.vue'
import Login from '@/views/Login.vue'
import Apply from '@/views/Apply.vue'
import Welcome from '@/views/Welcome.vue'

//AVISO: ALTERAR O PATH '/' PARA O COMPONENTE 'Home' NO EXAME

const routes = [
  {
    path: '/',
    component: Welcome
  },
  {
    path: '/home',
    component: Home
  },
  {
    path: '/jobs',
    component: Jobs
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/message',
    component: Message
  },
  {
    path: '/login',
    component: Login
  },

  {
    path: '/apply/:job_id',
    component: Apply
  },
                
]

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes
})

export default router
