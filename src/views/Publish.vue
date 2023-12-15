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

import { useUserStore } from '@/store/user'
import { useJobsStore } from '@/store/jobs'

export default {
  setup() {
    const userStore = useUserStore()
    const jobsStore = useJobsStore()	
    return { userStore, jobsStore }
  },  
  components: {
    Footer,
    Header
  },

  data() {
      return {
          title:'',
          image:'',
          location:'',
          salary:'',
          description:'',
          company:'',
          cat_id:''     
      }
  },

  mounted() {
  },
  methods: {    
    onSubmit() {

          // data valid                                        

          const newJob = {
              title : this.title,
              image : this.image,
              location : this.location,
              salary : this.salary,
              description : this.description,
              company : this.company,
              cat_id : this.cat_id,
          }
          this.addJob(newJob)

    },
    async addJob(newJob) {
        
    },        
  },
  computed: {
    invalidCompany: function () {

    },
    invalidLocation: function () {

    },        
    invalidTitle: function () {

    },
    invalidDescription: function () {

    }, 
    invalidSalary: function () {

    },                
  },

}
</script>