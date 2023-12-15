<template>
<div>


  
<Header />



    <!-- HOME -->




<Footer />

</div>
</template>
<script>
import Footer from '@/components/Footer.vue'
import Header from '@/components/Header.vue'


import { useUserStore } from '@/store/user'

export default {
	setup() {
		const userStore = useUserStore()		
		return { userStore }
  },    
  components: {
      Footer,
      Header
  },
  data() {
      return {
          email: '',
          password: '', 
          alertMessageStyle: 'display:none;'      
      }
  },
  mounted() {

  },
  methods: {    
    onSubmit() {

    },

    async loginUser(user) {

    },

   
  },
  computed: {
      invalidEmail() {

      },
      invalidPassword() {

      },                        
  },
}
</script>