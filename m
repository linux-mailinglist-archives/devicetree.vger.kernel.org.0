Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05E395B92BE
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 04:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiIOCsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 22:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiIOCsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 22:48:54 -0400
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017A48E99F
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 19:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663210133; x=1694746133;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xEp8BOdAtCPgRV+oYurKlPmcrBtbDgiB+N68SQvaA40=;
  b=Bo3GQGH7fDYsxTw4LHQCz+1wY1U4exArP5WWUoQ6pjgKZLaeVx7rHOg3
   XvZAQw7bhxzYVd+oJTyrZqdqIEX8gWDl06S5+rJ69pSbJ8MGU73MJasKO
   mZkFBf/YvE0RlT1IB49UftRPkZY+TuiOXBih+dfrjMC35R4iwmC67cSRm
   G3xEWS7Dx2qiAuhj488DX8pxlexxpVJPhaX6jcEgZ9mjFJGOwwLqRZpGp
   J+45r5P7dK1RXndqa4XSyd0mIx5NR77aIlX7yJZHYxPW+R6+DOfMraUzY
   FHVCzECNkYW3uhQfYG70TDgw9FvJGH/9hLTa7H7bH4heT3y7gcz6U8DL+
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278980890"
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; 
   d="scan'208";a="278980890"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2022 19:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,316,1654585200"; 
   d="scan'208";a="594636798"
Received: from lkp-server01.sh.intel.com (HELO d6e6b7c4e5a2) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 14 Sep 2022 19:48:51 -0700
Received: from kbuild by d6e6b7c4e5a2 with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1oYevC-0000oO-11;
        Thu, 15 Sep 2022 02:48:10 +0000
Date:   Thu, 15 Sep 2022 10:47:47 +0800
From:   kernel test robot <lkp@intel.com>
To:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org
Cc:     kbuild-all@lists.01.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 3/3] arm64: dts: freescale: Add InnoComm i.MX8MM based
 WB15 SoM and EVK
Message-ID: <202209151014.DmoRoYFo-lkp@intel.com>
References: <20220913103337.1849023-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913103337.1849023-4-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

I love your patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v6.0-rc5]
[cannot apply to next-20220914]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sascha-Hauer/arm64-dts-Add-InnoComm-WB15-EVK-support/20220913-183559
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20220915/202209151014.DmoRoYFo-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/1d6fe7241418270e6c26852e85104d10141c8678
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sascha-Hauer/arm64-dts-Add-InnoComm-WB15-EVK-support/20220913-183559
        git checkout 1d6fe7241418270e6c26852e85104d10141c8678
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> make[3]: *** No rule to make target 'arch/arm64/boot/dts/freescale/imx8mm-innocom-wb15-evk.dtb', needed by '__build'.
   make[3]: Target '__build' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
