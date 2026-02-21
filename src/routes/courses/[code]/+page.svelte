<script lang="ts">
  import BigHeading from '$lib/components/BigHeading.svelte';

  let { data } = $props();
  const course = data.course;

  const first_two_letters_of_course_name = course.name.slice(0, 2).toUpperCase();
  // random dark color based on `first_two_letters_of_course_name`
  const logoColor = `hsl(${first_two_letters_of_course_name.charCodeAt(0) * 10}, 70%, 30%)`;
</script>

<BigHeading>
  <div
    class="flex h-12 w-12 items-center justify-center text-white"
    style="background-color: {logoColor}"
  >
    {first_two_letters_of_course_name}
  </div>
  {course.code} – {course.name}
</BigHeading>

<div class="flex">
  <div class="flex flex-1 flex-col gap-4">
    <a>Startsida</a>
    <a>Kursplan</a>
    <a>Kursdokument</a>
    <a>Samarbetsyta</a>
    <a>Schema</a>
    <a>Föreläsningar</a>
    <a>Inlämningar</a>
    <a>Anmälan</a>
    <a>Laborationer</a>
    <a>Teams</a>
  </div>
  <div class="flex-4">
    {course.description}
  </div>
</div>
