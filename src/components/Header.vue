 <template>
	<div>



		<!-- NAVBAR -->
		<header class="site-navbar mt-3">
		<div class="container-fluid">
			<div class="row align-items-center">
			<div class="site-logo col-6"><router-link to="/">Careers</router-link></div>

			<nav class="mx-auto site-navigation">
				<ul v-if="userIsEmpty" class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
					<li><router-link to="/jobs">Jobs</router-link></li>
					<li><router-link to="/login">Login</router-link></li>						
					<li><router-link to="/register">Register</router-link></li>	  
				</ul>


				<ul v-else class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
					<li><router-link to="/jobs">Jobs</router-link></li>					
					<li><router-link to="/publish">Publish</router-link></li>
					<li><a @click.prevent="logout()" href="/logout">Logout</a></li>
					<li><a href="#">Welcome {{ userName }}</a></li>			  
				</ul>
			</nav>

			</div>
		</div>
		</header>
	</div>
</template>

<script>

import { useUserStore } from '@/store/user'

export default {

	setup() {
		const userStore = useUserStore()
		return { userStore }
  	},

    methods: {
        logout() {

        }
    },
    computed: {
        userIsEmpty() {

        },
        userName() {

        }
    },

}


</script>  
