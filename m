Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC897484088
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 12:11:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiADLLu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 06:11:50 -0500
Received: from mga18.intel.com ([134.134.136.126]:34796 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232001AbiADLLt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 4 Jan 2022 06:11:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641294709; x=1672830709;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0sUNquypVlsFzOoSS7MG86+OivLkacXI/Qeh4ThQmd8=;
  b=alamayLO4f9isNFwaEudtnUddbno0Ra0M70FQbh2Fd9g6N6GKqITBjC1
   zXp+bNZ266Z423V4ZdGSdvcVdD3vLggR7bKDHTrEPso52n+xGwnru3fha
   oF9VZv6oYZEy4miXgPSiOyZtbUHnmPMJ9nUvUYWuisa1M56L5i0hWXqy+
   2xE+Y6b25chl5t1dR45JPAPSO9Dc3iXj/rQPcxQxQ8eshle+IHsYAEbce
   pGwdv279gW4wT4lYBKgmEB2ncakSMxdk4zn5zkSObu5wcVk1fSmj5+DKw
   gewmGHPmoW5SGzImoxWn6k0jaI7gtek4+UWo3z7owMZNwJfuxcM6dg/BR
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="229025190"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; 
   d="scan'208";a="229025190"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2022 03:11:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; 
   d="scan'208";a="512473697"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 04 Jan 2022 03:11:46 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1n4hjF-000FFD-Of; Tue, 04 Jan 2022 11:11:45 +0000
Date:   Tue, 4 Jan 2022 19:11:14 +0800
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
Subject: Re: [PATCH v7 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <202201041908.dB4f5BTe-lkp@intel.com>
References: <20211227105545.4852-2-p.yadav@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211227105545.4852-2-p.yadav@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Pratyush,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v5.16-rc8 next-20211224]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211227-185749
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: csky-allyesconfig (https://download.01.org/0day-ci/archive/20220104/202201041908.dB4f5BTe-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/266027120669b8824f07fa9c2f7a59b7bc12648c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211227-185749
        git checkout 266027120669b8824f07fa9c2f7a59b7bc12648c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=csky SHELL=/bin/bash drivers/phy/cadence/ drivers/thermal/

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
   In file included from include/linux/device.h:15,
                    from include/linux/phy/phy.h:15,
                    from drivers/phy/cadence/cdns-dphy-rx.c:11:
   drivers/phy/cadence/cdns-dphy-rx.c:230:30: warning: format '%d' expects argument of type 'int', but argument 3 has type 'long int' [-Wformat=]
     230 |                 dev_err(dev, "Failed to register PHY provider: %d\n",
         |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:110:30: note: in definition of macro 'dev_printk_index_wrap'
     110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
         |                              ^~~
   include/linux/dev_printk.h:144:56: note: in expansion of macro 'dev_fmt'
     144 |         dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
         |                                                        ^~~~~~~
   drivers/phy/cadence/cdns-dphy-rx.c:230:17: note: in expansion of macro 'dev_err'
     230 |                 dev_err(dev, "Failed to register PHY provider: %d\n",
         |                 ^~~~~~~
   drivers/phy/cadence/cdns-dphy-rx.c:230:65: note: format string is defined here
     230 |                 dev_err(dev, "Failed to register PHY provider: %d\n",
         |                                                                ~^
         |                                                                 |
         |                                                                 int
         |                                                                %ld


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
   229		if (IS_ERR(provider)) {
   230			dev_err(dev, "Failed to register PHY provider: %d\n",
   231				PTR_ERR(provider));
   232			return PTR_ERR(provider);
   233		}
   234	
   235		return 0;
   236	}
   237	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
