Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D8B23D409E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 21:19:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbhGWSiu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 14:38:50 -0400
Received: from mga18.intel.com ([134.134.136.126]:12357 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229461AbhGWSiu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 23 Jul 2021 14:38:50 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="199199000"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; 
   d="scan'208";a="199199000"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2021 12:19:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; 
   d="scan'208";a="471629902"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2021 12:19:20 -0700
Received: from andy by smile with local (Exim 4.94.2)
        (envelope-from <andriy.shevchenko@intel.com>)
        id 1m70hV-00HTx9-M4; Fri, 23 Jul 2021 22:19:13 +0300
Date:   Fri, 23 Jul 2021 22:19:13 +0300
From:   Andy Shevchenko <andriy.shevchenko@intel.com>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 0/5] powerpc: apm82181: adding customer devices
Message-ID: <YPsWMRLWQoxHFub6@smile.fi.intel.com>
References: <cover.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1599343429.git.chunkeey@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 06, 2020 at 12:06:10AM +0200, Christian Lamparter wrote:
> Hello,
> 
> I've been holding on to these devices dts' for a while now.
> But ever since the recent purge of the PPC405, I'm feeling
> the urge to move forward.
> 
> The devices in question have been running with OpenWrt since
> around 2016/2017. Back then it was linux v4.4 and required
> many out-of-tree patches (for WIFI, SATA, CRYPTO...), that
> since have been integrated. So, there's nothing else in the
> way I think.
> 
> A patch that adds the Meraki vendor-prefix has been sent
> separately, as there's also the Meraki MR32 that I'm working
> on as well. Here's the link to the patch:
> <https://lore.kernel.org/linuxppc-dev/20200822154045.16036-1-chunkeey@gmail.com/>
> 
> Now, I've looked around in the arch/powerpc for recent .dts
> and device submissions to get an understanding of what is
> required.
> >From the looks of it, it seems like every device gets a
> skeleton defconfig and a CONFIG_$DEVICE symbol (Like:
> CONFIG_MERAKI_MR24, CONFIG_WD_MYBOOKLIVE).
> 
> Will this be the case? Or would it make sense to further
> unite the Bluestone, MR24 and MBL under a common CONFIG_APM82181
> and integrate the BLUESTONE device's defconfig into it as well?
> (I've stumbled across the special machine compatible
> handling of ppc in the Documentation/devicetree/usage-model.rst
> already.)

I haven't found any traces of this to be applied. What is the status of this
patch series? And what is the general state of affairs for the PPC44x?


-- 
With Best Regards,
Andy Shevchenko


