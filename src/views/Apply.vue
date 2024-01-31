<template>
<div>


  
<Header />


 <!-- MAIN -->

    
               



				
	




<Footer />

</div>
</template>
<script>
import Footer from '@/components/Footer.vue'
import Header from '@/components/Header.vue'


import { useApplicationsStore } from '@/store/applications'

export default {
    setup() {
    const applicationsStore = useApplicationsStore()	
		return { applicationsStore }
  	},  
    components: {
        Footer,
        Header
    },

    data() {
        return {
            motivation:'',
            salary:'',
            file:{},    
        }
    },

    mounted() {
    },
    methods: {   
      handleFileUpload(e){
			  this.file = e.target.files[0]
        console.log('file name: ', this.file.name)
		  }, 
      onSubmit() {

        // check if data valid
                                             

          
        // check if already applied for the job offer




      },

      async addApplication(newApplication) {
        //newApplication= {
        //      motivation: this.motivation,
        //      file: this.file.name,
        //      salary: this.salary,
        //      job_id: this.$route.params.job_id
        //}

					

      },


    },
    computed: {
        invalidMotivation: function () {

        },
       
        invalidFile: function () {

        },
        invalidSalary: function () {

        },        

    },

}
</script>