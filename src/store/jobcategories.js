 
import { defineStore } from 'pinia'

export const useJobCategoriesStore = defineStore({
  id: 'jobcategories',
  state: () => ({
    categories: [
    // {
    //"id":"1",
    //"name":"Full-time",
    //"description":"NULL",
    //"image":"NULL",
    //}
    ]
  }),
  getters: {
    getCategories (state) {
      return state.categories;
    },   
  }, 
  actions: {
    addCategories(categories){
      this.categories = categories
    },
    async getCategoriesDB() {
            try {
                const response = await fetch('http://daw.deei.fct.ualg.pt/~a12345/EXAME/api/jobcategories.php')
                const data = await response.json()
                console.log('received data:', data)                
                this.addCategories(data)
                return true
            } 
            catch (error) {
                console.log('error: ', error)
                return false
            }
        },
  },
})

  