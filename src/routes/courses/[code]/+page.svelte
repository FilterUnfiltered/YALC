<script lang="ts">
  let { data } = $props();
  const course = data.course;
</script>

<h1>{course.code} – {course.name}</h1>
