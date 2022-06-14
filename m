Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C509154B9F3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 21:02:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344738AbiFNTBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 15:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357412AbiFNTBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 15:01:14 -0400
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68C961165
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 11:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655233191; x=1686769191;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TJmxkFAg5DcQYSeiZno0G1i6Bgz3X6igQii0Ttgjycw=;
  b=KW4mOFY1Sryfj51tH3X+nh8Lt8NDqh9YopQzDSUxSi6daPzEvJkuMKEk
   37XK9cy7lEu5lQx4fJl8UAnlgr/HR+Cmr7o7H4Agb4PyW/Qco1ZIove8o
   lHnm9OMm3zZHBjp0x0QCWQbvXFCmB7KZ+YKJ63QMUvLq4m+yiP6T3luh6
   XC2XKuEmf8w60CqQmnfVACXAbCYJm1hiUXx4CiT+EMcmNetXeTp55j7Rl
   UW9aTpW6RRTGrfHpWe3rlBkMTos6WTDlx0w07JqdKEQ7tPxMDAGtkrvpy
   Xu0IP4DVtTBWD5+Mo1YSNe7705V8cHl7PZMHyHyTOjkZKtFCGB0o5+kQo
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276260975"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="276260975"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2022 11:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="712593088"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 14 Jun 2022 11:59:48 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
        (envelope-from <lkp@intel.com>)
        id 1o1BlT-000MDR-Ah;
        Tue, 14 Jun 2022 18:59:47 +0000
Date:   Wed, 15 Jun 2022 02:58:47 +0800
From:   kernel test robot <lkp@intel.com>
To:     Stefan Berger <stefanb@linux.ibm.com>, kexec@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     kbuild-all@lists.01.org, nayna@linux.ibm.com, nasastry@in.ibm.com,
        Stefan Berger <stefanb@linux.ibm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Biederman <ebiederm@xmission.com>
Subject: Re: [PATCH 2/3] tpm/kexec: Duplicate TPM measurement log in of-tree
 for kexec
Message-ID: <202206150235.zvfG6DIM-lkp@intel.com>
References: <20220614161258.1741427-3-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614161258.1741427-3-stefanb@linux.ibm.com>
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on linus/master v5.19-rc2 next-20220614]
[cannot apply to robh/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 0a35780c755ccec097d15c6b4ff8b246a89f1689
config: um-i386_defconfig (https://download.01.org/0day-ci/archive/20220615/202206150235.zvfG6DIM-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
        git checkout c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=um SUBARCH=i386 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from include/linux/i2c.h:13,
                    from drivers/input/mouse/synaptics.c:30:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   drivers/input/mouse/synaptics.c:164:27: warning: 'smbus_pnp_ids' defined but not used [-Wunused-const-variable=]
     164 | static const char * const smbus_pnp_ids[] = {
         |                           ^~~~~~~~~~~~~
--
   In file included from include/linux/irqdomain.h:35,
                    from include/linux/acpi.h:13,
                    from init/main.c:30:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   init/main.c:769:20: warning: no previous prototype for 'arch_post_acpi_subsys_init' [-Wmissing-prototypes]
     769 | void __init __weak arch_post_acpi_subsys_init(void) { }
         |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~
   init/main.c:781:20: warning: no previous prototype for 'mem_encrypt_init' [-Wmissing-prototypes]
     781 | void __init __weak mem_encrypt_init(void) { }
         |                    ^~~~~~~~~~~~~~~~
   init/main.c:783:20: warning: no previous prototype for 'poking_init' [-Wmissing-prototypes]
     783 | void __init __weak poking_init(void) { }
         |                    ^~~~~~~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from include/linux/tick.h:8,
                    from arch/um/kernel/process.c:24:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   arch/um/kernel/process.c:50:5: warning: no previous prototype for 'pid_to_processor_id' [-Wmissing-prototypes]
      50 | int pid_to_processor_id(int pid)
         |     ^~~~~~~~~~~~~~~~~~~
   arch/um/kernel/process.c:86:7: warning: no previous prototype for '__switch_to' [-Wmissing-prototypes]
      86 | void *__switch_to(struct task_struct *from, struct task_struct *to)
         |       ^~~~~~~~~~~
   arch/um/kernel/process.c: In function 'new_thread_handler':
   arch/um/kernel/process.c:121:28: warning: variable 'n' set but not used [-Wunused-but-set-variable]
     121 |         int (*fn)(void *), n;
         |                            ^
   arch/um/kernel/process.c: At top level:
   arch/um/kernel/process.c:139:6: warning: no previous prototype for 'fork_handler' [-Wmissing-prototypes]
     139 | void fork_handler(void)
         |      ^~~~~~~~~~~~
   arch/um/kernel/process.c:216:6: warning: no previous prototype for 'arch_cpu_idle' [-Wmissing-prototypes]
     216 | void arch_cpu_idle(void)
         |      ^~~~~~~~~~~~~
   arch/um/kernel/process.c:253:5: warning: no previous prototype for 'copy_to_user_proc' [-Wmissing-prototypes]
     253 | int copy_to_user_proc(void __user *to, void *from, int size)
         |     ^~~~~~~~~~~~~~~~~
   arch/um/kernel/process.c:263:5: warning: no previous prototype for 'clear_user_proc' [-Wmissing-prototypes]
     263 | int clear_user_proc(void __user *buf, int size)
         |     ^~~~~~~~~~~~~~~
   arch/um/kernel/process.c:316:12: warning: no previous prototype for 'make_proc_sysemu' [-Wmissing-prototypes]
     316 | int __init make_proc_sysemu(void)
         |            ^~~~~~~~~~~~~~~~
   arch/um/kernel/process.c:356:15: warning: no previous prototype for 'arch_align_stack' [-Wmissing-prototypes]
     356 | unsigned long arch_align_stack(unsigned long sp)
         |               ^~~~~~~~~~~~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from arch/um/kernel/time.c:10:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   arch/um/kernel/time.c:778:13: warning: no previous prototype for 'time_init' [-Wmissing-prototypes]
     778 | void __init time_init(void)
         |             ^~~~~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from include/linux/tick.h:8,
                    from include/linux/sched/isolation.h:6,
                    from kernel/workqueue.c:51:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from include/linux/tick.h:8,
                    from kernel/irq_work.c:17:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   kernel/irq_work.c:70:13: warning: no previous prototype for 'arch_irq_work_raise' [-Wmissing-prototypes]
      70 | void __weak arch_irq_work_raise(void)
         |             ^~~~~~~~~~~~~~~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from include/linux/tick.h:8,
                    from include/linux/sched/isolation.h:6,
                    from kernel/sched/fair.c:38:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   kernel/sched/fair.c:675:5: warning: no previous prototype for 'sched_update_scaling' [-Wmissing-prototypes]
     675 | int sched_update_scaling(void)
         |     ^~~~~~~~~~~~~~~~~~~~
--
   In file included from include/linux/clocksource.h:19,
                    from include/linux/clockchips.h:14,
                    from include/linux/tick.h:8,
                    from kernel/time/hrtimer.c:32:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   kernel/time/hrtimer.c:120:35: warning: initialized field overwritten [-Woverride-init]
     120 |         [CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
         |                                   ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:120:35: note: (near initialization for 'hrtimer_clock_to_base_table[0]')
   kernel/time/hrtimer.c:121:35: warning: initialized field overwritten [-Woverride-init]
     121 |         [CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
         |                                   ^~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:121:35: note: (near initialization for 'hrtimer_clock_to_base_table[1]')
   kernel/time/hrtimer.c:122:35: warning: initialized field overwritten [-Woverride-init]
     122 |         [CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
         |                                   ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:122:35: note: (near initialization for 'hrtimer_clock_to_base_table[7]')
   kernel/time/hrtimer.c:123:35: warning: initialized field overwritten [-Woverride-init]
     123 |         [CLOCK_TAI]             = HRTIMER_BASE_TAI,
         |                                   ^~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:123:35: note: (near initialization for 'hrtimer_clock_to_base_table[11]')
   kernel/time/hrtimer.c: In function '__run_hrtimer':
   kernel/time/hrtimer.c:1648:14: warning: variable 'expires_in_hardirq' set but not used [-Wunused-but-set-variable]
    1648 |         bool expires_in_hardirq;
         |              ^~~~~~~~~~~~~~~~~~
--
   In file included from include/linux/clk-provider.h:9,
                    from lib/vsprintf.c:23:
>> include/linux/of.h:848:48: warning: 'struct kimage' declared inside parameter list will not be visible outside of this definition or declaration
     848 | static inline void tpm_add_kexec_buffer(struct kimage *image)
         |                                                ^~~~~~
   lib/vsprintf.c: In function 'va_format':
   lib/vsprintf.c:1681:9: warning: function 'va_format' might be a candidate for 'gnu_printf' format attribute [-Wsuggest-attribute=format]
    1681 |         buf += vsnprintf(buf, end > buf ? end - buf : 0, va_fmt->fmt, va);
         |         ^~~


vim +848 include/linux/of.h

   847	
 > 848	static inline void tpm_add_kexec_buffer(struct kimage *image)
   849	{
   850	}
   851	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
