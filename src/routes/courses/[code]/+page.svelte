<script lang="ts">
  import BigHeading from '$lib/components/BigHeading.svelte';
  import DifferingSpeedLink from '$lib/components/DifferingSpeedLink.svelte';

  let { data } = $props();
  const course = data.course;

  const first_two_letters_of_course_name = course.name.slice(0, 2).toUpperCase();
  // random dark color based on `first_two_letters_of_course_name`
  const logoColor = `hsl(${first_two_letters_of_course_name.charCodeAt(0) * 10}, 70%, 30%)`;
</script>

<BigHeading class="mb-4">
  <div
    class="flex h-12 w-12 items-center justify-center text-white"
    style="background-color: {logoColor}"
  >
    {first_two_letters_of_course_name}
  </div>
  {course.code} - {course.name}
</BigHeading>

<div class="flex gap-2">
  <div
    class="flex flex-1 flex-col opacity-80 [&>*]:p-2 [&>*]:hover:cursor-pointer [&>*]:hover:bg-gray-100 [&>*]:hover:underline [&>*]:dark:hover:bg-gray-800"
  >
    <DifferingSpeedLink to="/courses/{course.code}/start">Startsida</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/plan">Kursplan</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/documents">Kursdokument</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/collaboration">Samarbetsyta</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/schedule">Schema</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/lectures">Föreläsningar</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/assignments">Inlämningar</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/registration">Anmälan</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/laborations">Laborationer</DifferingSpeedLink>
    <DifferingSpeedLink to="/courses/{course.code}/teams">Teams</DifferingSpeedLink>
  </div>

  <div class="flex-4 p-2">
    {course.description}
  </div>
</div>
