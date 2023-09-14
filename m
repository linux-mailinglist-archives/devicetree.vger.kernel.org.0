Return-Path: <devicetree+bounces-226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 749067A06B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:59:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 763201C209F8
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 13:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08ACC21A0F;
	Thu, 14 Sep 2023 13:53:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F099724209
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 13:53:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C98B1AE;
	Thu, 14 Sep 2023 06:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1694699630; x=1726235630;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=NEKocQoGfcfZKQftz4/7uTx3WA4f8EK2S6Mq45SyuhI=;
  b=MCAlWSpQxmUGpvKeDHE6KwFPz5yOyjByNV7iHxaFenZV4R0GybF3bktc
   js8q9/eqxQXv3JmNzdXYIEaIu3PEi8RNrZQd/ZG0gULpncEIfd0XfbYbs
   9pyEQDfrHp8lp18WFi3eIWLBDddejWR0O9+3NKm9ITVq72P+QzN/4ocbU
   V4T7Uznyrrfb7VfB1PZZ2uYmoEWOWuwg3JtexDOmJ08ZH/94RaG6ZqzmK
   uOSkVidtP7RRr4N5QxbhuWBC1eYlY5G6LdgzOe8KSF3Si4kjSWzUhsBmr
   g+1oF4os88mSCQg599EDdPjbMsQWoqbmGzicNveAiX6EmEBRIfHnarVaS
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364000235"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; 
   d="scan'208";a="364000235"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Sep 2023 06:36:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="991389372"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; 
   d="scan'208";a="991389372"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2023 06:36:02 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1qgmVO-0001dF-0q;
	Thu, 14 Sep 2023 13:36:00 +0000
Date: Thu, 14 Sep 2023 21:34:39 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Matyas <daniel.matyas@analog.com>
Cc: oe-kbuild-all@lists.linux.dev, Daniel Matyas <daniel.matyas@analog.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 4/4] hwmon: max31827: Add custom attribute for resolution
Message-ID: <202309142140.qvHsiLc3-lkp@intel.com>
References: <20230913152135.457892-5-daniel.matyas@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913152135.457892-5-daniel.matyas@analog.com>

Hi Daniel,

kernel test robot noticed the following build warnings:

[auto build test WARNING on groeck-staging/hwmon-next]
[also build test WARNING on linus/master v6.6-rc1 next-20230914]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Daniel-Matyas/hwmon-max31827-Make-code-cleaner/20230913-232729
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
patch link:    https://lore.kernel.org/r/20230913152135.457892-5-daniel.matyas%40analog.com
patch subject: [PATCH 4/4] hwmon: max31827: Add custom attribute for resolution
reproduce: (https://download.01.org/0day-ci/archive/20230914/202309142140.qvHsiLc3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309142140.qvHsiLc3-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Documentation/hwmon/max31827.rst:107: WARNING: Bullet list ends without a blank line; unexpected unindent.

vim +107 Documentation/hwmon/max31827.rst

    93	
    94	The conversion time doubles with every bit of increased resolution. The
    95	available resolutions are:
    96		- 8 bit -> 8.75 ms conversion time
    97		- 9 bit -> 17.5 ms conversion time
    98		- 10 bit -> 35 ms conversion time
    99		- 12 bit (default) -> 140 ms conversion time
   100	
   101	There is a temp1_resolution attribute which indicates the unit change in the
   102	input temperature in milli-degrees C.
   103		- 1000 mC -> 8 bit
   104		- 500 mC -> 9 bit
   105		- 250 mC -> 10 bit
   106		- 62 mC -> 12 bit (default) - actually this is 62.5, but the file
 > 107		returns 62
   108	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

