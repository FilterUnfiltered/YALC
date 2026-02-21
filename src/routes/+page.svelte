<script lang="ts">
  import academic_hat from '$lib/assets/icons/academic_hat.svg';
  import Heading from '$lib/components/Heading.svelte';
  import LatestCoursesList from '$lib/components/LatestCoursesList.svelte';
  import lisam_logo from '$lib/assets/lisam-logo.png';
</script>

<h1 class="flex items-center gap-2 text-2xl font-semibold">
  <img src={lisam_logo} alt="Lisam logo" class="h-12 w-12" />
  Lisam
</h1>

<Heading>Courses and programs</Heading>
<LatestCoursesList />

<h2>Upcoming for you</h2>
