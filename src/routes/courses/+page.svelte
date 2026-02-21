<script lang="ts">
  import BigHeading from '$lib/components/BigHeading.svelte';

  const { data } = $props();
</script>

<BigHeading>
  Courses and programs
</BigHeading>

<ul>
  {#each Object.entries(data.courses) as [code, course]}
    <li>
      <a href={`/courses/${code}`}>
        {code} – {course.name}
      </a>
    </li>
  {/each}
</ul>
