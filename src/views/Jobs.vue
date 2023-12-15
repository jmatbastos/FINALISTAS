<template>



<div class="site-wrap">

    <Header />

    <!-- HOME -->






<Footer />>

</div>







</template>

<script>
import Footer from '@/components/Footer.vue'
import Header from '@/components/Header.vue'


import { useJobsStore } from '@/store/jobs'
import { useJobCategoriesStore } from '@/store/jobcategories'

export default {

  setup() {	
      const jobsStore = useJobsStore()		
      const jobCategoriesStore = useJobCategoriesStore()
      return { jobsStore, jobCategoriesStore}
  },  

  components: {
    Footer,
    Header
  },


  data() {
    return {
      jobs : [],
    }
  },
  mounted() {
    this.getJobs()
  },
  methods: {       
    getJobs() {

    },
    Select(name) {

    }      
  },
  computed: {
    jobCategories() {

    }    
  },  
}
</script>

<style scoped>
</style>