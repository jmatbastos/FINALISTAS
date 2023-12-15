<template>
  <!-- HOME -->
  <section class="home-section section-hero inner-page overlay bg-image"
      style="background-image: url('images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="mb-5 text-center">
              <h1 class="text-white font-weight-bold">{{ message }}</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
</template>

<script>
export default {
    data() {
		return {
            message: '',
		}
	},   
    mounted() {
        this.message = localStorage.getItem('message')
        var timeleft = 3;
        var downloadTimer = setInterval(() => {
        if(timeleft <= 0){
            clearInterval(downloadTimer);
            this.$router.push('/jobs')
        }
        timeleft -= 1;
        }, 1000);
	},

}
</script>

<style scoped>
</style>



