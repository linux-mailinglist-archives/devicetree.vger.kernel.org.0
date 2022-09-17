Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0540A5BB4FD
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 02:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbiIQA1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 20:27:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiIQA1v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 20:27:51 -0400
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97903B5154
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 17:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663374470; x=1694910470;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jo320+rrwrHTG1RNyKEQy4jos7tldyZzi3QYxxz8m2g=;
  b=L1xSjBP7BSOCKS502x/j7jN5+b+ZAmgQ37bjyl7POHHWP9o7T4LLXd+M
   gaqzn3X/YlytNBb0ucn70TCR6BdLeRJaNi/BxW0nvDrocMiI3XTBNlQJz
   UfncioE6FZSBp2QBJPy+OuhlcM4IesMSkhfClFCirrLBXraEd1KNMPtrx
   nMRG/IxcL+pHAfu8emKjnteM0RjR1CFr4tBOytbfNtwGN5P8fjWm0CGn3
   t1qT82o4GZsCF2thhKcb36JE5olcxpgfB5IxmGRX3MpgndBHhM0HENOaT
   K1WSyp8ktBc+Ienb+X5rt9dYtyeJFnIPEKrQxEd15PGuxQPeMt2oZAdhD
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="286147579"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
   d="scan'208";a="286147579"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2022 17:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; 
   d="scan'208";a="569009426"
Received: from lkp-server02.sh.intel.com (HELO 41300c7200ea) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 16 Sep 2022 17:27:48 -0700
Received: from kbuild by 41300c7200ea with local (Exim 4.96)
        (envelope-from <lkp@intel.com>)
        id 1oZLgR-0002IM-35;
        Sat, 17 Sep 2022 00:27:47 +0000
Date:   Sat, 17 Sep 2022 08:27:26 +0800
From:   kernel test robot <lkp@intel.com>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     kbuild-all@lists.01.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
Subject: Re: [PATCH] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Message-ID: <202209170832.i1sbiKeZ-lkp@intel.com>
References: <20220916034655.486996-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220916034655.486996-1-sergio.paracuellos@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sergio,

I love your patch! Perhaps something to improve:

[auto build test WARNING on wsa/i2c/for-next]
[also build test WARNING on robh/for-next linus/master v6.0-rc5 next-20220916]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sergio-Paracuellos/dt-bindings-i2c-migrate-mt7621-text-bindings-to-YAML/20220916-114905
base:   https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/for-next
reproduce:
        # https://github.com/intel-lab-lkp/linux/commit/679db228c0e4ae3ac6ccb36bdac025af4faf64b0
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Sergio-Paracuellos/dt-bindings-i2c-migrate-mt7621-text-bindings-to-YAML/20220916-114905
        git checkout 679db228c0e4ae3ac6ccb36bdac025af4faf64b0
        make menuconfig
        # enable CONFIG_COMPILE_TEST, CONFIG_WARN_MISSING_DOCUMENTS, CONFIG_WARN_ABI_ERRORS
        make htmldocs

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/i2c/i2c-mt7621.txt

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
