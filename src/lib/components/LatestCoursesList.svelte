<script lang="ts">
  import yaml from 'js-yaml';

  import coursesYamlString from '$lib/assets/courses.yaml?raw';
  type Course = {
    code: string;
    name: string;
  };
  const courses = yaml.load(coursesYamlString) as Course[];
</script>

<div class="grid">
  {#each courses as course }
    <div>{course.name}</div> 
  {/each}
</div>
