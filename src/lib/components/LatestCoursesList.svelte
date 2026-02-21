<script lang="ts">
  type Course = {
    code: string;
    name: string;
  };
  import yaml from 'js-yaml';
  import coursesYamlString from '$lib/assets/courses.yaml?raw';
  const courses = yaml.load(coursesYamlString) as Course[];

  import { GraduationCap } from '@lucide/svelte';
</script>

<div class="grid grid-cols-2 items-center">
  {#each courses as course }
    <!-- FIXME: use type-safe/corrected href? -->
    <a class="whitespace-nowrap truncate" href={course.code}>{course.code} - {course.name}</a> 
    <GraduationCap />
  {/each}
</div>
