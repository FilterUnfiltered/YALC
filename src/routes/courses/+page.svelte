<script lang="ts">
  const { data } = $props();
</script>

<h1>Courses</h1>

<ul>
  {#each Object.entries(data.courses) as [code, course]}
    <li>
      <a href={`/courses/${code}`}>
        {code} – {course.name}
      </a>
    </li>
  {/each}
</ul>
