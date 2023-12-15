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
            name: '',
            email: '',
            password: '',
            passwordConfirm: '',        
        }
    },

    mounted() {
    },
    methods: {    
        onSubmit() {


        },

        async userExists(user) {

      },

      async addUser() {

      },        
    },
    computed: {
        invalidName: function () {

        },
        invalidEmail: function () {

        },
        invalidPassword: function () {

        },
        invalidPasswordConfirm: function () {

        },                
    },

}
</script>