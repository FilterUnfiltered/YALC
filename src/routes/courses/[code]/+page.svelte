<script lang="ts">
  let { data } = $props();
  const course = data.course;

  const first_two_letters_of_course_name = course.name.slice(0, 2).toUpperCase();
  // random dark color based on `first_two_letters_of_course_name`
  const logoColor = `hsl(${first_two_letters_of_course_name.charCodeAt(0) * 10}, 70%, 30%)`;
</script>

<h1 class="flex items-center gap-6 text-2xl font-semibold">
  <div class="flex h-12 w-12 items-center justify-center text-white" style="background-color: {logoColor}">
    {first_two_letters_of_course_name}
  </div>
  {course.code} – {course.name}
</h1>

<div class="flex">
  <div></div>
</div>
