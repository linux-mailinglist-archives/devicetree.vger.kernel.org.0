Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0547A54BEF1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 02:55:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241827AbiFOAzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 20:55:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239536AbiFOAzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 20:55:00 -0400
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FAA94D26E
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 17:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655254499; x=1686790499;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xcnNFG/zqM4/ixpw6inku9EczznlEWvUdxlz+0w+WCA=;
  b=dCn3Olg+5hN78xKdlzY25lHlBA248A9/G1e8m4M99DYQoCWj6IgaTVlM
   lob/jtEzaOlolRR7IjmLjsdnDKhca1w/Lu8XRW+uRrBfCqWxJNLiYwJGB
   n9uzADMjry/iUbK/GAdUBh8YEXx6cOyYrMCwX9oxD2OqULO7XMY9aMKe0
   SKOf+aGZpzB8LgmR/loVQVsJULKMWttFv7Mw4HzchJlv71AmdNnuKfr0N
   52Gy1wYfDlVXY3I3OroGMd55xI721tzbnYSmj1QgK4A7ivtI6Cl6s95tY
   Ci075U3E0ijFjoapGPHgu6kF8irf5ECzAmOcqnBO393t9TmRPaMME2qiI
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258638015"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="258638015"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2022 17:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; 
   d="scan'208";a="570696311"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 14 Jun 2022 17:54:56 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
        (envelope-from <lkp@intel.com>)
        id 1o1HJ9-000MRP-Sx;
        Wed, 15 Jun 2022 00:54:55 +0000
Date:   Wed, 15 Jun 2022 08:54:02 +0800
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
Message-ID: <202206150856.h2psJLGs-lkp@intel.com>
References: <20220614161258.1741427-3-stefanb@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220614161258.1741427-3-stefanb@linux.ibm.com>
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on linus/master v5.19-rc2 next-20220614]
[cannot apply to robh/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 0a35780c755ccec097d15c6b4ff8b246a89f1689
config: x86_64-randconfig-r022-20220613 (https://download.01.org/0day-ci/archive/20220615/202206150856.h2psJLGs-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-3) 11.3.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Stefan-Berger/tpm-Preserve-TPM-measurement-log-across-kexec/20220615-001510
        git checkout c42b5be1ad82e8a991a3d35417c9e495e7eb4c93
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/of/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/of/kexec.c:306: warning: expecting prototype for tpm_free_kexec_buffer(). Prototype was for tpm_of_remove_kexec_buffer() instead


vim +306 drivers/of/kexec.c

   301	
   302	/**
   303	 * tpm_free_kexec_buffer - free memory used by the IMA buffer
   304	 */
   305	static int tpm_of_remove_kexec_buffer(void)
 > 306	{
   307		struct property *prop;
   308	
   309		prop = of_find_property(of_chosen, "linux,tpm-kexec-buffer", NULL);
   310		if (!prop)
   311			return -ENOENT;
   312	
   313		return of_remove_property(of_chosen, prop);
   314	}
   315	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
