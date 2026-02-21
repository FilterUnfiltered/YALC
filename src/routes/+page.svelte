<script lang="ts">
  import Heading from '$lib/components/Heading.svelte';
  import LatestCoursesList from '$lib/components/LatestCoursesList.svelte';
  import lisam_logo from '$lib/assets/lisam-logo.png';
  import { resolve } from '$app/paths';
  import BigHeading from '$lib/components/BigHeading.svelte';
</script>

<<<<<<< Updated upstream
<nav class="flex items-center gap-8 text-sm text-gray-600 dark:text-gray-400">
  <BigHeading>
=======
<nav class="mb-12 flex items-center gap-8 text-sm text-gray-600 dark:text-gray-400">
  <h1 class="flex items-center gap-8 text-2xl font-semibold text-black dark:text-white">
>>>>>>> Stashed changes
    <img src={lisam_logo} alt="Lisam logo" class="h-12 w-12" />
    Lisam
  </BigHeading>
  <a href={resolve('/')} class="hover:underline">Home</a>
  <a href={resolve('/courses')} class="hover:underline">Courses and Programs</a>
  <a href={resolve('/news')} class="hover:underline">Lisam News</a>
  <a href={resolve('/upcoming')} class="hover:underline">Upcoming</a>
</nav>

<Heading>Courses and programs</Heading>
<LatestCoursesList />

<h2>Upcoming for you</h2>
