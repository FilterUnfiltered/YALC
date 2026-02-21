<script lang="ts">
  let { data } = $props();
</script>

<h1>Courses</h1>

<ul>
  {#each data.courses as course}
    <li>
      <a href={`/courses/${course.code}`}>
        {course.code} – {course.name}
      </a>
    </li>
  {/each}
</ul>
