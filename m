Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1E624985E6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:08:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiAXRIR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:08:17 -0500
Received: from mga02.intel.com ([134.134.136.20]:33502 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229666AbiAXRIQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 12:08:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643044096; x=1674580096;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MvGW/i2CtciqnZkhcCu2sB/cTv621WNdOCTrufKLsU8=;
  b=ndVsiCC7hmX2i1kJ+UH9gc3FKLNuoVL2F9I2nYiSV4+kyBXx2L/oKZBY
   X7qWIF55dMugDGECM9gPzUNDNkTsODU05GYbpEm7XKH1T+SQPYHGgPU53
   /vE4a5duAjvJBxC9DxpHNKrETPlQSQJoIwE71mkDOSlR9khXYgw0X2gHi
   ZUEikoh4SQpiyDKoytuEsCzlWicfvXeRvPsuG5KJ3Qtypn7G+1YL61XzT
   kddzX6/FQ2P64+RpqRmlq35+ZXQU/jES3NHIlUeOxZLUt+TK8hGxq2CLw
   d/nTmn0C06flr8Az/0h7UBvHw1Q2ULWn5/K9vuqkpAL0yBEUeiG2qs94f
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="233456508"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; 
   d="scan'208";a="233456508"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2022 09:06:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; 
   d="scan'208";a="580455011"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2022 09:05:58 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
        (envelope-from <lkp@intel.com>)
        id 1nC2mz-000Iei-I3; Mon, 24 Jan 2022 17:05:57 +0000
Date:   Tue, 25 Jan 2022 01:05:15 +0800
From:   kernel test robot <lkp@intel.com>
To:     Jishnu Prakash <quic_jprakash@quicinc.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        mka@chromium.org, dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
        knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
        manivannan.sadhasivam@linaro.org
Cc:     kbuild-all@lists.01.org
Subject: Re: [PATCH V4 4/4] thermal: qcom: add support for PMIC5 Gen2 ADCTM
Message-ID: <202201250011.1S70DeEF-lkp@intel.com>
References: <1642998194-12899-5-git-send-email-quic_jprakash@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1642998194-12899-5-git-send-email-quic_jprakash@quicinc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jishnu,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rafael-pm/thermal]
[also build test ERROR on jic23-iio/togreg robh/for-next v5.17-rc1 next-20220124]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jishnu-Prakash/thermal-qcom-Add-support-for-PMIC5-Gen2-ADC_TM/20220124-122541
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git thermal
config: xtensa-allyesconfig (https://download.01.org/0day-ci/archive/20220125/202201250011.1S70DeEF-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/ced19e8d00bc35c712b9cee1e8bc2bf741a50f9c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Jishnu-Prakash/thermal-qcom-Add-support-for-PMIC5-Gen2-ADC_TM/20220124-122541
        git checkout ced19e8d00bc35c712b9cee1e8bc2bf741a50f9c
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=xtensa SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/thermal/qcom/qcom-spmi-adc-tm5.c:21:10: fatal error: linux/unaligned/le_byteshift.h: No such file or directory
      21 | #include <linux/unaligned/le_byteshift.h>
         |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   compilation terminated.


vim +21 drivers/thermal/qcom/qcom-spmi-adc-tm5.c

  > 21	#include <linux/unaligned/le_byteshift.h>
    22	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
