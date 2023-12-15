<template>
	<footer class="site-footer">	
		<div class="container">
			<div class="row text-center">
				<div class="col-12">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					{{ year }} All rights reserved | This template is made with <i
					class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				</div>
			</div>
		</div>
	</footer>
</template>

<script>
    export default {
        computed: {
            year: function () {
                return new Date().getFullYear()
            },
        }
    }  

</script>
