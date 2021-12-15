Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE182475E43
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 18:11:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244959AbhLORLg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 12:11:36 -0500
Received: from mga09.intel.com ([134.134.136.24]:59869 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232113AbhLORLg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 12:11:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639588296; x=1671124296;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=edXL2NDH77Vq5+3qPUNxhejC8s6Say3j/M5f/xR81ck=;
  b=jLT0W0IyeN366ClUVx4ATBQWm/l1m5vRQe3oAb2+wbI87F5iXGakIWZx
   xuaJBXCRIv7RBw1RjYumtEeR+WUm2uCMOqI7ZB952y8Tmpny3SjHL/mdS
   x6JB410VxZ2CSdux6cAi6TKowDqzJvSF1YgISSXwKQa7oQFgqmsojZLLW
   M3pUOKNCkXA8lO9HXKlmtUM9IFJRrF4VklaWUyrE2/OkwibpOkIEEvyVu
   VroCDHlozcyOap8bOYNNTjw6GFPSt3UtZnIvOHiGr5iooPRP+Du/L5/7N
   kHQGnrT3rovasuCq8Ynp15a6D0OcxvQp062O9FkodOhpXrrxLKpI2+jm+
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="239091522"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; 
   d="scan'208";a="239091522"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2021 09:09:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; 
   d="scan'208";a="482464752"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 15 Dec 2021 09:09:08 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1mxXm8-00026X-6O; Wed, 15 Dec 2021 17:09:08 +0000
Date:   Thu, 16 Dec 2021 01:08:33 +0800
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
Subject: Re: [PATCH v6 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <202112160116.Cc1gKnvK-lkp@intel.com>
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
[also build test WARNING on linus/master v5.16-rc5 next-20211214]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211215-021112
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: riscv-randconfig-r035-20211215 (https://download.01.org/0day-ci/archive/20211216/202112160116.Cc1gKnvK-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project dd245bab9fbb364faa1581e4f92ba3119a872fba)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/7422cc73ff300a5eb0e57ff6fe426e01f5dcb2b0
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pratyush-Yadav/Rx-mode-support-for-Cadence-DPHY/20211215-021112
        git checkout 7422cc73ff300a5eb0e57ff6fe426e01f5dcb2b0
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=riscv SHELL=/bin/bash drivers/phy/cadence/

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
   1 warning generated.


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
