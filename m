Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3BEA54C4EA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 11:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346655AbiFOJnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 05:43:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243260AbiFOJnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 05:43:15 -0400
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7C942A1E
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 02:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655286194; x=1686822194;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Gzz1iRzP8BZUucFTdSJ/RhCje5/r/u/CNl2OzKbkMoM=;
  b=AU1BHYheuKSARc5isNFJmOjGweeK1C7sPS3oPrekPR9TPGdvreqN094K
   n1bQr/GeBd8yzXRLY6G/hMHfk/Yw1g/Ch3KfjjowYO2zu4NTs1HWHZVr3
   CFfAf2PXsdFXW345MFlmNkoOPpHitwvyCibF181JfZxwpAaBbxgVP+o3D
   r919LDj42mOHHCrbbI+UQ6tWKwTMfDg2OV3HYBew7kmTsNFtcEM1Xbc/1
   GR/YwYSIecnshU4X/dvD9lWzZounulVf7NanQKfn+CwwZ8IShGUuqu+X2
   f2L2itDFK4IdKAKfrxlsfY5oSI1qtomA5Scv4KZKEBEzrJGjn0FnZgcv3
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="279616568"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="279616568"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2022 02:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="589018691"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2022 02:43:08 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
        (envelope-from <lkp@intel.com>)
        id 1o1PYJ-000Mjj-TY;
        Wed, 15 Jun 2022 09:43:07 +0000
Date:   Wed, 15 Jun 2022 17:42:19 +0800
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
Message-ID: <202206151737.t3TxlR7I-lkp@intel.com>
References: <20220614161258.1741427-3-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614161258.1741427-3-stefanb@linux.ibm.com>
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[also build test ERROR on linus/master v5.19-rc2 next-20220615]
[cannot apply to robh/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 0a35780c755ccec097d15c6b4ff8b246a89f1689
config: x86_64-randconfig-m001-20220613 (https://download.01.org/0day-ci/archive/20220615/202206151737.t3TxlR7I-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
        git checkout c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   ld: kernel/kexec_file.o: in function `kimage_file_alloc_init':
>> kexec_file.c:(.text+0x880): undefined reference to `tpm_add_kexec_buffer'

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
