<template>
	<div class="site-wrap">




		<!-- NAVBAR -->


		<!-- HOME -->




	</div>

</template>

<script>



import { useJobsStore } from '@/store/jobs'
import { useJobCategoriesStore } from '@/store/jobcategories'

export default {

	setup() {
		const jobsStore = useJobsStore()
		const jobCategoriesStore = useJobCategoriesStore()		
		return { jobsStore, jobCategoriesStore }
  	},

    components: {

    },
   
    mounted() {

    },

}

</script>

<style scoped>
</style>