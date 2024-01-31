 
import { defineStore } from 'pinia'
import { useUserStore } from './user'

export const useApplicationsStore = defineStore({
  id: 'applications',
  state: () => ({
    applications: [
      {
      // "id":"7",
      // "job_id":"1",
      // "file":"CV.pdf",
      // "motivation":"I am the best!",      
      // "salary":"60000",
      // "created_at":"2023-11-10 20:46:38",      
      // "title":"React developer",
      // "image":"1.jpg",
      // "location":"California",
      // "description":"seeking experienced programmer",
      // "company":"Vodafone",
      // "publisher":"Marc Andressen",
      // "category":"Temporary"
      },
    ],
  }),
  getters: {
    getApplications (state) {
      return state.applications;
    },
    
  }, 
  actions: {
    addApplications(applications){
      this.applications = applications
    },
    newApplication(application){
      this.applications = [application, ...this.applications]
    },  
    async getApplicationsDB() {
            try {
                const userStore = useUserStore()
                const response = await fetch(`http://daw.deei.fct.ualg.pt/~a12345/FINALISTAS/api/applications.php?session_id=${userStore.user.session_id}`)
                const data = await response.json()
                console.log('received data:', data)                
                this.addApplications(data)
                return true
            } 
            catch (error) {
                console.log('error: ', error)
                return false
            }
    },
    async newApplicationDB(newApplication) {
      //newApplication: {
        // "motivation":"I am the best for the job!",
        // "file":"CurriculumVitae.pdf",
        // "salary":"60000",
        // "job_id":"1"
      //}         
      try {
              const userStore = useUserStore()
              const response = await fetch(`http://daw.deei.fct.ualg.pt/~a12345/FINALISTAS/api/applications.php?session_id=${userStore.user.session_id}`, {
              method: 'POST',
              body: JSON.stringify(newApplication),
              headers: { 'Content-type': 'text/html; charset=UTF-8' },
          })
          const data = await response.json()
          console.log('received data:', data)
          this.newApplication(data)
          return true
      } 
      catch (error) {
          console.error(error)
          return false
      }
    },     
  },
})