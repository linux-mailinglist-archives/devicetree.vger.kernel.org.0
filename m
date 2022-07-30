Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E59265858AD
	for <lists+devicetree@lfdr.de>; Sat, 30 Jul 2022 07:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbiG3FGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jul 2022 01:06:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbiG3FGo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jul 2022 01:06:44 -0400
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAA1B743E0
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 22:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1659157602; x=1690693602;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=vBSp1cFUv3O8Is2Z6A/HQa9G1Q+IaT9f7NN2FPv+PmA=;
  b=FcJh2F6eJDM6I5USsG7gDcvtvSX1P9I3A8ZebFlGg0cGn9Z6DQt3IgLH
   4tdPA/S3JinFiH3ExeZEO9MPd0S/oRysm+zBeGNd1LIlKKzU1EXxuY0mr
   jurDZ6OwtLtFf8QhYA0h8L6d3YO2rNTDFPwaOqOA4xDm/wcKi7IQDrHyh
   myC6PZAsLOuEx9EgIV7GYWfx81KGTwbIoX4NzNMHVDeE9FSZsbOnYqtsI
   2wnI5yZtqy9Ejw7eEfRtwHw2LUW6h5Y17aJbwkRyZQ+5ZaTv/KjE2tnRl
   ZhrfkyquLDVU2IcSM/Fypm9Ev+2EHe6bIf1XKWjV0+GF+MdzyGKYZtvS9
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="275781081"
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; 
   d="scan'208";a="275781081"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jul 2022 22:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; 
   d="scan'208";a="634337147"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 29 Jul 2022 22:06:40 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1oHegR-000CQZ-15;
        Sat, 30 Jul 2022 05:06:39 +0000
Date:   Sat, 30 Jul 2022 13:06:25 +0800
From:   kernel test robot <lkp@intel.com>
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     kbuild-all@lists.01.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8326
Message-ID: <202207301213.IB52frif-lkp@intel.com>
References: <20220729090857.579785-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220729090857.579785-1-zhuning0077@gmail.com>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zhu,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on broonie-sound/for-next]
[also build test ERROR on tiwai-sound/for-next linus/master v5.19-rc8 next-20220728]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Zhu-Ning/ASoC-codecs-add-support-for-ES8326/20220729-171050
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: ia64-randconfig-r031-20220729 (https://download.01.org/0day-ci/archive/20220730/202207301213.IB52frif-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/fa066f18e36d4d134a5e94a872c911335b148576
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Zhu-Ning/ASoC-codecs-add-support-for-ES8326/20220729-171050
        git checkout fa066f18e36d4d134a5e94a872c911335b148576
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=ia64 SHELL=/bin/bash sound/soc/codecs/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/ia64/include/asm/pgtable.h:153,
                    from include/linux/pgtable.h:6,
                    from arch/ia64/include/asm/uaccess.h:40,
                    from include/linux/uaccess.h:11,
                    from include/linux/sched/task.h:11,
                    from include/linux/sched/signal.h:9,
                    from include/linux/rcuwait.h:6,
                    from include/linux/percpu-rwsem.h:7,
                    from include/linux/fs.h:33,
                    from include/linux/cgroup.h:17,
                    from include/linux/memcontrol.h:13,
                    from include/linux/swap.h:9,
                    from include/linux/suspend.h:5,
                    from include/linux/regulator/consumer.h:35,
                    from include/linux/i2c.h:19,
                    from sound/soc/codecs/es8326.c:10:
   arch/ia64/include/asm/mmu_context.h: In function 'reload_context':
   arch/ia64/include/asm/mmu_context.h:127:48: warning: variable 'old_rr4' set but not used [-Wunused-but-set-variable]
     127 |         unsigned long rr0, rr1, rr2, rr3, rr4, old_rr4;
         |                                                ^~~~~~~
   In file included from include/linux/container_of.h:5,
                    from include/linux/kernel.h:21,
                    from include/linux/clk.h:13,
                    from sound/soc/codecs/es8326.c:9:
   sound/soc/codecs/es8326.c: In function 'es8326_jack_button_handler':
   include/linux/container_of.h:19:54: error: 'struct es8326_priv' has no member named 'button_press_work'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                                                      ^~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   sound/soc/codecs/es8326.c:533:17: note: in expansion of macro 'container_of'
     533 |                 container_of(work, struct es8326_priv, button_press_work.work);
         |                 ^~~~~~~~~~~~
>> include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer
     293 | #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
         |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:78:56: note: in definition of macro '__static_assert'
      78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
         |                                                        ^~~~
   include/linux/container_of.h:19:9: note: in expansion of macro 'static_assert'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |         ^~~~~~~~~~~~~
   include/linux/container_of.h:19:23: note: in expansion of macro '__same_type'
      19 |         static_assert(__same_type(*(ptr), ((type *)0)->member) ||       \
         |                       ^~~~~~~~~~~
   sound/soc/codecs/es8326.c:533:17: note: in expansion of macro 'container_of'
     533 |                 container_of(work, struct es8326_priv, button_press_work.work);
         |                 ^~~~~~~~~~~~
   In file included from include/uapi/linux/posix_types.h:5,
                    from include/uapi/linux/types.h:14,
                    from include/linux/types.h:6,
                    from include/linux/kasan-checks.h:5,
                    from include/asm-generic/rwonce.h:26,
                    from ./arch/ia64/include/generated/asm/rwonce.h:1,
                    from include/linux/compiler.h:248,
                    from include/linux/err.h:5,
                    from include/linux/clk.h:12:
   include/linux/stddef.h:16:33: error: 'struct es8326_priv' has no member named 'button_press_work'
      16 | #define offsetof(TYPE, MEMBER)  __builtin_offsetof(TYPE, MEMBER)
         |                                 ^~~~~~~~~~~~~~~~~~
   include/linux/container_of.h:22:28: note: in expansion of macro 'offsetof'
      22 |         ((type *)(__mptr - offsetof(type, member))); })
         |                            ^~~~~~~~
   sound/soc/codecs/es8326.c:533:17: note: in expansion of macro 'container_of'
     533 |                 container_of(work, struct es8326_priv, button_press_work.work);
         |                 ^~~~~~~~~~~~
   sound/soc/codecs/es8326.c:543:46: error: 'ES8326_HP_DECTECT_FB' undeclared (first use in this function); did you mean 'ES8326_HP_DETECT_FB'?
     543 |         iface = snd_soc_component_read(comp, ES8326_HP_DECTECT_FB);
         |                                              ^~~~~~~~~~~~~~~~~~~~
         |                                              ES8326_HP_DETECT_FB
   sound/soc/codecs/es8326.c:543:46: note: each undeclared identifier is reported only once for each function it appears in
   sound/soc/codecs/es8326.c:574:54: error: 'struct es8326_priv' has no member named 'button_press_work'
     574 |                 queue_delayed_work(system_wq, &es8326->button_press_work,
         |                                                      ^~
   sound/soc/codecs/es8326.c:579:54: error: 'struct es8326_priv' has no member named 'button_press_work'
     579 |                 queue_delayed_work(system_wq, &es8326->button_press_work,
         |                                                      ^~
   sound/soc/codecs/es8326.c: In function 'es8326_jack_detect_handler':
   sound/soc/codecs/es8326.c:602:46: error: 'ES8326_HP_DECTECT_FB' undeclared (first use in this function); did you mean 'ES8326_HP_DETECT_FB'?
     602 |         iface = snd_soc_component_read(comp, ES8326_HP_DECTECT_FB);
         |                                              ^~~~~~~~~~~~~~~~~~~~
         |                                              ES8326_HP_DETECT_FB
   sound/soc/codecs/es8326.c:615:62: error: 'struct es8326_priv' has no member named 'button_press_work'
     615 |                         queue_delayed_work(system_wq, &es8326->button_press_work, 10);
         |                                                              ^~
   sound/soc/codecs/es8326.c: In function 'es8326_resume':
   sound/soc/codecs/es8326.c:681:14: error: 'reg' undeclared (first use in this function)
     681 |         if ((reg & ES8326_VERSION_B) == 1) {
         |              ^~~
   sound/soc/codecs/es8326.c: In function 'es8326_probe':
   sound/soc/codecs/es8326.c:740:41: error: 'ES8326_INT_SRC_PIN9' undeclared (first use in this function); did you mean 'ES8326_HP_DET_SRC_PIN9'?
     740 |                 es8326->interrupt_src = ES8326_INT_SRC_PIN9;
         |                                         ^~~~~~~~~~~~~~~~~~~
         |                                         ES8326_HP_DET_SRC_PIN9
   sound/soc/codecs/es8326.c: At top level:
   sound/soc/codecs/es8326.c:530:13: warning: 'es8326_jack_button_handler' defined but not used [-Wunused-function]
     530 | static void es8326_jack_button_handler(struct work_struct *work)
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/es8326.c:315:42: warning: 'es8326_constraints' defined but not used [-Wunused-variable]
     315 | static struct snd_pcm_hw_constraint_list es8326_constraints = {
         |                                          ^~~~~~~~~~~~~~~~~~


vim +293 include/linux/compiler_types.h

eb111869301e15b Rasmus Villemoes 2019-09-13  291  
d15155824c50148 Will Deacon      2017-10-24  292  /* Are two types/vars the same type (ignoring qualifiers)? */
d15155824c50148 Will Deacon      2017-10-24 @293  #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
d15155824c50148 Will Deacon      2017-10-24  294  

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
