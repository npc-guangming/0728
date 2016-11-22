
<template>
<div>
<Contents v-if="isShow_home"></Contents>
<Role v-if="isShow_menu" ></Role>
<Mine v-if="isShow_mine"></Mine>
<Menus v-on:show-what="geet"></Menus> 
</div>
</template>

<script >
import Menus from './components/Menus'
import Contents from './components/Contents'
import Role from './components/Role'
import Mine from './components/Mine'
 export default {
  components: {
  	Menus,Contents,Role,Mine
  },
  data () {
   return{
   	isShow_home:true,
    isShow_menu:false,
    isShow_mine:false
    
   }
  },methods: {
    geet:function(msg) {
     if (msg=="home") {
       this.isShow_home=true;
       this.isShow_menu=false;
       this.isShow_mine=false;
     }else if(msg=="menu"){
       this.isShow_home=false;
       this.isShow_menu=true;
       this.isShow_mine=false;
     }
     else if(msg=="mine"){
       this.isShow_home=false;
       this.isShow_menu=false;
       this.isShow_mine=true;
     }

      var  _self=this;
      function aaa() {
      console.log(_self.isShow_home);
      }
       aaa();
    }
    
  }

} 

</script>