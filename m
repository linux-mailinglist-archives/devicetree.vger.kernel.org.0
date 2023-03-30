Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88EE16D103C
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 22:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjC3Up3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 16:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjC3UpW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 16:45:22 -0400
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22F7E1AD
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 13:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680209114; x=1711745114;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=idS/b7faLBak6wmc6fg6lSllhfUDEdrqCTQkRRUG23Q=;
  b=jmf1cCww11FX25GTBwkdKmBtFqlw7jvGS8yMKaC8lCdxjJF+NSLWJtVL
   +I5NpfLsse7bgBqzqCsHoCCjHYgxX0dK9BjsQUPV4GFTDA0LiqyI1MyZH
   mRdfWRxeea3hni3lXuTZyg5aZrvmrO/+mxbisaS+sahZ56Nm07hXsVERO
   XWu6Tn8t4WuXKx5+RQnpopRZqgO2V/1Plw42IkWFkcqXUxb116znnPYoD
   8uIWqFYQzbhvtooBklk6yCQOPvL1uyQCIEnpksGRqOponMtl9SKPon6OC
   +hTafg8sUkVtF9Sfqyvj5PvDpww43/MPx0FFoA0Bshd6MXesiazte/RPq
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="329804632"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; 
   d="scan'208";a="329804632"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2023 13:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="795813702"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; 
   d="scan'208";a="795813702"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2023 13:45:10 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1phz8v-000LCJ-1e;
        Thu, 30 Mar 2023 20:45:09 +0000
Date:   Fri, 31 Mar 2023 04:44:26 +0800
From:   kernel test robot <lkp@intel.com>
To:     James Morse <james.morse@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     oe-kbuild-all@lists.linux.dev,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        James Morse <james.morse@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 5/6] firmware: smccc: Allow errata management to be
 overridden by device tree
Message-ID: <202303310444.3JHIsByA-lkp@intel.com>
References: <20230330165128.3237939-6-james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330165128.3237939-6-james.morse@arm.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi James,

I love your patch! Perhaps something to improve:

[auto build test WARNING on arm64/for-next/core]
[also build test WARNING on robh/for-next arm/for-next arm/fixes kvmarm/next soc/for-next linus/master v6.3-rc4 next-20230330]
[cannot apply to xilinx-xlnx/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/James-Morse/dt-bindings-firmware-Add-arm-errata-management/20230331-005505
base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
patch link:    https://lore.kernel.org/r/20230330165128.3237939-6-james.morse%40arm.com
patch subject: [PATCH 5/6] firmware: smccc: Allow errata management to be overridden by device tree
config: arm64-randconfig-r032-20230329 (https://download.01.org/0day-ci/archive/20230331/202303310444.3JHIsByA-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/79e2d2cd6684ebd4e8c4787905486b63301117a9
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review James-Morse/dt-bindings-firmware-Add-arm-errata-management/20230331-005505
        git checkout 79e2d2cd6684ebd4e8c4787905486b63301117a9
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/firmware/smccc/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303310444.3JHIsByA-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/firmware/smccc/em.c:142:5: warning: no previous prototype for 'arm_smccc_em_dt_alloc_tbl_entry' [-Wmissing-prototypes]
     142 | int arm_smccc_em_dt_alloc_tbl_entry(struct device_node *np, const char *name,
         |     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


vim +/arm_smccc_em_dt_alloc_tbl_entry +142 drivers/firmware/smccc/em.c

   141	
 > 142	int arm_smccc_em_dt_alloc_tbl_entry(struct device_node *np, const char *name,
   143					    struct arm_em_dt_supplement_array *entry)
   144	{
   145		int ret = of_property_count_u32_elems(np, name);
   146	
   147		if (ret <= 0)
   148			return 0;
   149		if (ret > ARRAY_SIZE(entry->val))
   150			return -E2BIG;
   151	
   152		entry->num = ret;
   153		return of_property_read_u32_array(np, name, entry->val, entry->num);
   154	}
   155	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
