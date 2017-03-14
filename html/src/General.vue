<template>
    <div class="MiddleBody">
        <central-part></central-part>
        <right-side><right-side>    
    </div>
</template>

<script>
import RightSide from './RightSide.vue'
import CentralPart from './CentralPart.vue'

export default {
  name: 'general',
  components: { RightSide, CentralPart }

}
</script>