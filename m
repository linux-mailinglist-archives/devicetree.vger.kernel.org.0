Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFB2B592023
	for <lists+devicetree@lfdr.de>; Sun, 14 Aug 2022 16:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239569AbiHNOZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Aug 2022 10:25:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231576AbiHNOZE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Aug 2022 10:25:04 -0400
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C268FD34
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 07:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660487103; x=1692023103;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BrfqPS+42fpSPco2qiUiAeyKE4KcP8i3PXPRikDEEA0=;
  b=B477GiUesgFsmoaAOXWqv+ff/SnX+dPgHPfHgTsm/yQbfAxKVu7tJoEN
   LtVjBp5LWWvZ133IK2WBrcDRLO1Z/gl+1ambwug6ZGpxvPzE+YFwoB7vp
   a44bcE2Q4O3eJpqJlK4krOim9gCsj+9HaUNbLBpqOL+aksPV/T9SOmkHA
   tCdGq5Ch5RDpDdG5q09Fev4U8P2b4glOVNamV0XATD5gBuAAfgXrMOGYq
   OmTWn1V+7kUvhfYWskttLuYUjWyscBSZNIXaZlcJBl8c5/0I/WC+ZGpI3
   Gq2oTP1omh9u5NzCe9atmUOztsDTxZCDRz47lzCw2+S5K9P+W1/43Wga4
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="272222544"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="272222544"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2022 07:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; 
   d="scan'208";a="557020961"
Received: from lkp-server02.sh.intel.com (HELO 3d2a4d02a2a9) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 14 Aug 2022 07:24:59 -0700
Received: from kbuild by 3d2a4d02a2a9 with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1oNEXz-0000At-0p;
        Sun, 14 Aug 2022 14:24:59 +0000
Date:   Sun, 14 Aug 2022 22:24:08 +0800
From:   kernel test robot <lkp@intel.com>
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     kbuild-all@lists.01.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        robh@kernel.org, Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>
Subject: Re: [PATCH v4 1/2] ASoC: codecs: add support for ES8326
Message-ID: <202208142254.zxunJSSg-lkp@intel.com>
References: <20220729090857.579785-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220729090857.579785-1-zhuning0077@gmail.com>
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zhu,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on broonie-sound/for-next]
[also build test WARNING on tiwai-sound/for-next linus/master v5.19 next-20220812]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Zhu-Ning/ASoC-codecs-add-support-for-ES8326/20220729-171050
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
config: i386-allyesconfig (https://download.01.org/0day-ci/archive/20220814/202208142254.zxunJSSg-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/fa066f18e36d4d134a5e94a872c911335b148576
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Zhu-Ning/ASoC-codecs-add-support-for-ES8326/20220729-171050
        git checkout fa066f18e36d4d134a5e94a872c911335b148576
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash sound/soc/codecs/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   include/linux/compiler_types.h:293:27: error: expression in static assertion is not an integer
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
                    from ./arch/x86/include/generated/asm/rwonce.h:1,
                    from include/linux/compiler.h:248,
                    from include/linux/err.h:5,
                    from include/linux/clk.h:12,
                    from sound/soc/codecs/es8326.c:9:
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
   At top level:
   sound/soc/codecs/es8326.c:530:13: warning: 'es8326_jack_button_handler' defined but not used [-Wunused-function]
     530 | static void es8326_jack_button_handler(struct work_struct *work)
         |             ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> sound/soc/codecs/es8326.c:315:42: warning: 'es8326_constraints' defined but not used [-Wunused-variable]
     315 | static struct snd_pcm_hw_constraint_list es8326_constraints = {
         |                                          ^~~~~~~~~~~~~~~~~~


vim +/es8326_constraints +315 sound/soc/codecs/es8326.c

   314	
 > 315	static struct snd_pcm_hw_constraint_list es8326_constraints = {
   316		.count = ARRAY_SIZE(es8326_rates),
   317		.list = es8326_rates,
   318	};
   319	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
