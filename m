Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0478474D5D
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 22:52:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbhLNVwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 16:52:36 -0500
Received: from mga01.intel.com ([192.55.52.88]:2219 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234866AbhLNVwd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Dec 2021 16:52:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639518753; x=1671054753;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eNpz37iIBD8X74QJoYuMCn2u5zbozA+q1ZRh6vOLoEc=;
  b=DtGKsR9H7hb90FEtbmSb13Dw/XcIfhsbryIrvS598PT0rBLe+Nm/lxo0
   aCNFr8ryxVugFcx3tuOZeJD6ELqyEaFOOJD6h6tRswNl3SW378b/RwV9e
   QkpDfNAdKUROsW4ztZ1Toi/i19T/kMtvcxVifncrfkHS6KXNaSBK/fi3E
   Mz7yME2YN0OBMJ6rwyFz4Lz4d/bd4NnMohAlU+Zco1Oq2wc7rCBdzq03n
   S+3eNrTclQMRjIdaYff3mDtyVOFpTQyoBOKtApvSRWEXx+GBxTxp+iu3F
   OLgTnZPjuC1G6iFNjwTg3fIf4PB//Kpvid2pvgKJGbFRTDDwNhQJtRMEk
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="263237402"
X-IronPort-AV: E=Sophos;i="5.88,206,1635231600"; 
   d="scan'208";a="263237402"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2021 13:52:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,206,1635231600"; 
   d="scan'208";a="482132124"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 14 Dec 2021 13:52:29 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mxFin-0000ny-5B; Tue, 14 Dec 2021 21:52:29 +0000
Date:   Wed, 15 Dec 2021 05:52:12 +0800
From:   kernel test robot <lkp@intel.com>
To:     Pratyush Yadav <p.yadav@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc:     kbuild-all@lists.01.org, Pratyush Yadav <p.yadav@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <202112150558.NJXyyT76-lkp@intel.com>
References: <20211214180703.3268-2-p.yadav@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211214180703.3268-2-p.yadav@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Pratyush,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v5.16-rc5 next-20211213]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211215-021112
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20211215/202112150558.NJXyyT76-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/7422cc73ff300a5eb0e57ff6fe426e01f5dcb2b0
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211215-021112
        git checkout 7422cc73ff300a5eb0e57ff6fe426e01f5dcb2b0
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=m68k SHELL=/bin/bash drivers/phy/cadence/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15,
                    from include/linux/phy/phy.h:15,
                    from drivers/phy/cadence/cdns-dphy-rx.c:11:
   drivers/phy/cadence/cdns-dphy-rx.c: In function 'cdns_dphy_rx_probe':
>> drivers/phy/cadence/cdns-dphy-rx.c:223:30: warning: format '%d' expects argument of type 'int', but argument 3 has type 'long int' [-Wformat=]
     223 |                 dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:144:56: note: in expansion of macro 'dev_fmt'
     144 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   drivers/phy/cadence/cdns-dphy-rx.c:223:17: note: in expansion of macro 'dev_err'
     223 |                 dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
         |                 ^~~~~~~
   drivers/phy/cadence/cdns-dphy-rx.c:223:54: note: format string is defined here
     223 |                 dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
         |                                                     ~^
         |                                                      |
         |                                                      int
         |                                                     %ld


vim +223 drivers/phy/cadence/cdns-dphy-rx.c

   203	
   204	static int cdns_dphy_rx_probe(struct platform_device *pdev)
   205	{
   206		struct device *dev = &pdev->dev;
   207		struct phy_provider *provider;
   208		struct cdns_dphy_rx *dphy;
   209	
   210		dphy = devm_kzalloc(dev, sizeof(*dphy), GFP_KERNEL);
   211		if (!dphy)
   212			return -ENOMEM;
   213	
   214		dev_set_drvdata(dev, dphy);
   215		dphy->dev = dev;
   216	
   217		dphy->regs = devm_platform_ioremap_resource(pdev, 0);
   218		if (IS_ERR(dphy->regs))
   219			return PTR_ERR(dphy->regs);
   220	
   221		dphy->phy = devm_phy_create(dev, NULL, &cdns_dphy_rx_ops);
   222		if (IS_ERR(dphy->phy)) {
 > 223			dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
   224			return PTR_ERR(dphy->phy);
   225		}
   226	
   227		phy_set_drvdata(dphy->phy, dphy);
   228		provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
   229	
   230		return PTR_ERR_OR_ZERO(provider);
   231	}
   232	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
