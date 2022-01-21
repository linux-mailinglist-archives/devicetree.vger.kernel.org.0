Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFF16496300
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 17:39:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239155AbiAUQjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 11:39:20 -0500
Received: from mga06.intel.com ([134.134.136.31]:34978 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229714AbiAUQjU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Jan 2022 11:39:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642783159; x=1674319159;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wy8KvC+qP9LJLqxszBR4Lznvgde40sWScqOt94GUNwE=;
  b=PhUMs6+2PW13PmsNezbR/J36ENL3ZV7dKvgohWBTA2Qzz8RgDyEGmvGv
   sOt/O8OxF8czRp4OCTDN4NsVH5ECJ/aSh8yEMBPDgbQGB17z1CDCfQh47
   9f07v0ZKGWwn0qFQX6OhcSfq1uh3uJ/PN1D9AGLtDwPOM4oXiL4mSuGrQ
   1IYbjHqwXCXQBdshuPJVc+zS6166GISJSGktDjeEbGb5sDniEugIkNF+t
   Ep1u096/DzeN6CbEi+nVFzSWU/MdRGSTH+s7qf9kUfnaqACIruD77YWP8
   pc/oYyxO5a1WSbfy5jsrLEPVbTTk6821pvVDt6kyet2XXOU2ULbrWozCQ
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="306412750"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; 
   d="scan'208";a="306412750"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2022 08:39:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; 
   d="scan'208";a="623374207"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2022 08:38:58 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1nAwwD-000FUO-IF; Fri, 21 Jan 2022 16:38:57 +0000
Date:   Sat, 22 Jan 2022 00:38:38 +0800
From:   kernel test robot <lkp@intel.com>
To:     Pratyush Yadav <p.yadav@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc:     llvm@lists.linux.dev, kbuild-all@lists.01.org,
        Pratyush Yadav <p.yadav@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v8 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <202201220002.AYMD2qX0-lkp@intel.com>
References: <20220121093849.3218092-2-p.yadav@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220121093849.3218092-2-p.yadav@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Pratyush,

I love your patch! Perhaps something to improve:

[auto build test WARNING on robh/for-next]
[also build test WARNING on linus/master v5.16 next-20220121]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20220121-174104
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-allmodconfig (https://download.01.org/0day-ci/archive/20220122/202201220002.AYMD2qX0-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 7b3d30728816403d1fd73cc5082e9fb761262bce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/a27020695f773ffff7f462e53f7ff7ca39109cd0
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20220121-174104
        git checkout a27020695f773ffff7f462e53f7ff7ca39109cd0
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/gpu/drm/meson/ drivers/phy/cadence/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/phy/cadence/cdns-dphy-rx.c:223:46: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
                   dev_err(dev, "Failed to create PHY: %d\n", PTR_ERR(dphy->phy));
                                                       ~~     ^~~~~~~~~~~~~~~~~~
                                                       %ld
   include/linux/dev_printk.h:144:65: note: expanded from macro 'dev_err'
           dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                  ~~~     ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                ~~~    ^~~~~~~~~~~
   drivers/phy/cadence/cdns-dphy-rx.c:231:4: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
                           PTR_ERR(provider));
                           ^~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:144:65: note: expanded from macro 'dev_err'
           dev_printk_index_wrap(_dev_err, KERN_ERR, dev, dev_fmt(fmt), ##__VA_ARGS__)
                                                                  ~~~     ^~~~~~~~~~~
   include/linux/dev_printk.h:110:23: note: expanded from macro 'dev_printk_index_wrap'
                   _p_func(dev, fmt, ##__VA_ARGS__);                       \
                                ~~~    ^~~~~~~~~~~
   2 warnings generated.


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
