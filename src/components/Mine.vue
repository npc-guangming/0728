<template>
   <div>
   	 <img id="code" src="../img/code.png">
   	 <div id="note" v-once>{{msg}}<div id="h"></div></div>
   	 
   </div>

</template>

<script>
export default {
  data () {
    return {
      msg: '这个是我个人建的群,自己平时琢磨的东西都会发群里,现在略懂angular,vue,react等等,热爱编程,如果有志同道合的朋友可以加入,大家一起研究',
    }
  }
}
</script>

<style >
#code{
	width: 80%;
	margin:10px 10%;

}
#note{
	width: 80%;
	line-height: 35px;
	margin: 10px auto;

}
 #h{
 	width: 100%;
 	height: 60px;
 }
</style>
