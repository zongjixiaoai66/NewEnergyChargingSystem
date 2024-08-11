import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import baoxui from '@/views/modules/baoxui/list'
    import chat from '@/views/modules/chat/list'
    import chongdianzhuang from '@/views/modules/chongdianzhuang/list'
    import chongdianzhuangOrder from '@/views/modules/chongdianzhuangOrder/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import yonghu from '@/views/modules/yonghu/list'
    import config from '@/views/modules/config/list'
    import dictionaryBaoxui from '@/views/modules/dictionaryBaoxui/list'
    import dictionaryBaoxuiZhuangtai from '@/views/modules/dictionaryBaoxuiZhuangtai/list'
    import dictionaryChat from '@/views/modules/dictionaryChat/list'
    import dictionaryChongdianzhuang from '@/views/modules/dictionaryChongdianzhuang/list'
    import dictionaryChongdianzhuangOrder from '@/views/modules/dictionaryChongdianzhuangOrder/list'
    import dictionaryChongdianzhuangZhuangtai from '@/views/modules/dictionaryChongdianzhuangZhuangtai/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryShangxia from '@/views/modules/dictionaryShangxia/list'
    import dictionaryZhuangtai from '@/views/modules/dictionaryZhuangtai/list'





//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryBaoxui',
        name: '充电桩类型',
        component: dictionaryBaoxui
    }
    ,{
        path: '/dictionaryBaoxuiZhuangtai',
        name: '报修状态',
        component: dictionaryBaoxuiZhuangtai
    }
    ,{
        path: '/dictionaryChat',
        name: '数据类型',
        component: dictionaryChat
    }
    ,{
        path: '/dictionaryChongdianzhuang',
        name: '充电桩类型',
        component: dictionaryChongdianzhuang
    }
    ,{
        path: '/dictionaryChongdianzhuangOrder',
        name: '订单类型',
        component: dictionaryChongdianzhuangOrder
    }
    ,{
        path: '/dictionaryChongdianzhuangZhuangtai',
        name: '充电桩状态',
        component: dictionaryChongdianzhuangZhuangtai
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShangxia',
        name: '上下架',
        component: dictionaryShangxia
    }
    ,{
        path: '/dictionaryZhuangtai',
        name: '状态',
        component: dictionaryZhuangtai
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/baoxui',
        name: '反馈',
        component: baoxui
      }
    ,{
        path: '/chat',
        name: '客服聊天',
        component: chat
      }
    ,{
        path: '/chongdianzhuang',
        name: '充电桩',
        component: chongdianzhuang
      }
    ,{
        path: '/chongdianzhuangOrder',
        name: '充电桩预约',
        component: chongdianzhuangOrder
      }
    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '新能源公告',
        component: gonggao
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }


    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
