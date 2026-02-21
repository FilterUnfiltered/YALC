<script lang="ts">
  import Heading from '$lib/components/Heading.svelte';
  import LatestCoursesList from '$lib/components/LatestCoursesList.svelte';
  import UpcomingForYou from '$lib/components/UpcomingForYou.svelte';
  import lisam_logo from '$lib/assets/lisam-logo.png';
  import { resolve } from '$app/paths';
  import BigHeading from '$lib/components/BigHeading.svelte';
</script>

<nav class="mb-12 flex items-center gap-8 text-sm text-gray-600 dark:text-gray-400">
  <BigHeading>
    <img src={lisam_logo} alt="Lisam logo" class="h-12 w-12" />
    Lisam
  </BigHeading>
  <a href={resolve('/')} class="hover:underline">Home</a>
  <a href={resolve('/courses')} class="hover:underline">Courses and Programs</a>
  <a href={resolve('/news')} class="hover:underline">Lisam News</a>
  <a href={resolve('/upcoming')} class="hover:underline">Upcoming</a>
</nav>

<div class="flex flex-row gap-8 px-30">
  <div class="flex-3">
    <Heading class="py-4">Courses and programs</Heading>
    <LatestCoursesList />
  </div>

  <div class="flex-2">
    <Heading class="py-4">Upcoming for you</Heading>
    <UpcomingForYou />
  </div>
</div>
