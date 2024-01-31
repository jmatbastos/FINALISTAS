 
import { defineStore } from 'pinia'
import { useUserStore } from './user'

export const useJobsStore = defineStore({
  id: 'jobs',
  state: () => ({
    jobs: [
      {
      // "id":"7",
      // "title":"React developer",
      // "image":"1.jpg",
      // "location":"California",
      // "salary":"60",
      // "description":"seeking experienced programmer",
      // "company":"Vodafone",
      // "created_at":"2023-11-10 20:46:38",
      // "publisher":"Marc Andressen",
      // "category":"Temporary"
      },
    ],
  }),
  getters: {
    getjobs (state) {
      return state.jobs;
    },

    getJobsByCat: (state) => (category) => {
      const results = state.jobs.filter(j => {
          return j.category == category;
      })
      return results
    }, 

    getJobByID: (state) => {
        return (id) => state.jobs.filter((j) => j.id === id)
    },  
    
  }, 
  actions: {
    addjobs(jobs){
      this.jobs = jobs
    },
    newJob(job){
      this.jobs = [job, ...this.jobs]
    },  
    async getJobsDB() {
            try {
                const response = await fetch('http://daw.deei.fct.ualg.pt/~a12345/FINALISTAS/api/jobs.php')
                const data = await response.json()
                console.log('received data:', data)                
                this.addjobs(data)
                return true
            } 
            catch (error) {
                console.log('error: ', error)
                return false
            }
    },
    async newJobDB(newJob) {
      //newJob: {
        // "title":"React developer",
        // "image":"1.jpg",
        // "location":"California",
        // "salary":"60000",
        // "description":"seeking experienced programmer",
        // "company":"Vodafone",
        // "cat_id":"1"
      //}         
      try {
              const userStore = useUserStore()
              const response = await fetch(`http://daw.deei.fct.ualg.pt/~a12345/FINALISTAS/api/jobs.php?session_id=${userStore.user.session_id}`, {
              method: 'POST',
              body: JSON.stringify(newJob),
              headers: { 'Content-type': 'text/html; charset=UTF-8' },
          })
          const data = await response.json()
          console.log('received data:', data)
          this.newJob(data)
          return true
      } 
      catch (error) {
          console.error(error)
          return false
      }
    },     
  },
})