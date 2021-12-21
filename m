Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2010E47C1E4
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 15:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238648AbhLUOvC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 09:51:02 -0500
Received: from mga01.intel.com ([192.55.52.88]:48862 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238633AbhLUOvB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 09:51:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1640098261; x=1671634261;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6RtwwE0EFaUmX60TSuRjY2CsyUdKqvR2zhehLQQz4LY=;
  b=f+RiV/RWyupte2OEs13JsvbyoD0+xzRGOhxdtHm3m9/uqTTKzNKYpRHv
   O7CYtCTuk0/oeGKY8lKVoSrb9+tjiAnwuNTwjj4i9+smAqyNpbphxRQgb
   1+afhUX8V0vIKtEoTqTOGlLue8HQEI2GTemuWKHhp+4YRsPNVJHZhiG42
   DGVAPrO4a2lg/LvoiF4VE+Fofl8nZaFoavMQzovBfcWChrvkaqFt4M6Wq
   5td6OAogj7+cAo7+3zxC89eq3Z+uWzr+CuzHqVY4AYKtghn4g1jaQG8No
   mFMiQaxEI7thXq5oVDAEGI17/O3PGHBIlknfz7k/R6enrm3pvnSJgQMt5
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="264597091"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; 
   d="scan'208";a="264597091"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Dec 2021 06:51:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; 
   d="scan'208";a="466318801"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 21 Dec 2021 06:50:59 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mzgTi-00099w-Jf; Tue, 21 Dec 2021 14:50:58 +0000
Date:   Tue, 21 Dec 2021 22:50:20 +0800
From:   kernel test robot <lkp@intel.com>
To:     Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        Baruch Siach <baruch@tkos.co.il>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] of: base: Fix phandle argument length mismatch error
 message
Message-ID: <202112212255.C7mbbAHi-lkp@intel.com>
References: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Baruch,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on v5.16-rc6 next-20211220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Baruch-Siach/of-base-Fix-phandle-argument-length-mismatch-error-message/20211221-165314
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: mips-allyesconfig (https://download.01.org/0day-ci/archive/20211221/202112212255.C7mbbAHi-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/2308f6de78c852efe475dcb275b3236b185b03f5
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Baruch-Siach/of-base-Fix-phandle-argument-length-mismatch-error-message/20211221-165314
        git checkout 2308f6de78c852efe475dcb275b3236b185b03f5
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=mips SHELL=/bin/bash drivers/of/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/asm-generic/bug.h:22,
                    from arch/mips/include/asm/bug.h:42,
                    from include/linux/bug.h:5,
                    from arch/mips/include/asm/cmpxchg.h:11,
                    from arch/mips/include/asm/atomic.h:22,
                    from include/linux/atomic.h:7,
                    from include/linux/console.h:17,
                    from drivers/of/base.c:20:
   drivers/of/base.c: In function 'of_phandle_iterator_next':
>> include/linux/kern_levels.h:5:25: warning: format '%ld' expects argument of type 'long int', but argument 5 has type 'int' [-Wformat=]
       5 | #define KERN_SOH        "\001"          /* ASCII Start Of Header */
         |                         ^~~~~~
   include/linux/printk.h:418:25: note: in definition of macro 'printk_index_wrap'
     418 |                 _p_func(_fmt, ##__VA_ARGS__);                           \
         |                         ^~~~
   include/linux/printk.h:489:9: note: in expansion of macro 'printk'
     489 |         printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         |         ^~~~~~
   include/linux/kern_levels.h:11:25: note: in expansion of macro 'KERN_SOH'
      11 | #define KERN_ERR        KERN_SOH "3"    /* error conditions */
         |                         ^~~~~~~~
   include/linux/printk.h:489:16: note: in expansion of macro 'KERN_ERR'
     489 |         printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
         |                ^~~~~~~~
   drivers/of/base.c:1379:25: note: in expansion of macro 'pr_err'
    1379 |                         pr_err("%pOF: %s = %d found %ld\n",
         |                         ^~~~~~


vim +5 include/linux/kern_levels.h

314ba3520e513a Joe Perches 2012-07-30  4  
04d2c8c83d0e3a Joe Perches 2012-07-30 @5  #define KERN_SOH	"\001"		/* ASCII Start Of Header */
04d2c8c83d0e3a Joe Perches 2012-07-30  6  #define KERN_SOH_ASCII	'\001'
04d2c8c83d0e3a Joe Perches 2012-07-30  7  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
