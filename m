Return-Path: <devicetree+bounces-958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9717A4211
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C0E21C2101C
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D566F748E;
	Mon, 18 Sep 2023 07:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C166D39
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 07:17:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E2C1A8;
	Mon, 18 Sep 2023 00:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1695021458; x=1726557458;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=KsfAbNSSH07DrMGxoNkMeYYnB9cf5vxCWMe2RiqJX1A=;
  b=XX3yh7FFe1eWIYf3o4NwdH8U8p0+6UzaSL4IE9FwQqRIjaOLv5zZ1hQz
   sLBJxRvpbsucRCEvaAeiht0IBiaohTMyUQKJAdzOx8ExATkOMcm2uUfwu
   0Bu/6mctYBmvASgm2Pr/Wh7K13EFtdBtPwoWROoSskU2T4jD5h07CUeGY
   itxiwGAV9nnGEAWnwfNOBI6Xs6DEUE+nRh4ZKqwSXUEOmFmxvEJQafx5B
   CQM1f28MRve9/pchNq51SWvC8whWErkk1L1bvpk242vjxjvRWr1n5Hi/i
   oofCGT8dTvOFIEbESmb9iVcMKrBGBQHYF8cPorv7+lHIOpG69dqLWtQjU
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="382328532"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; 
   d="scan'208";a="382328532"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2023 00:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="888926792"
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; 
   d="scan'208";a="888926792"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2023 00:16:51 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC0)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1qi8Va-0000000EDuQ-1Nt2;
	Mon, 18 Sep 2023 10:17:26 +0300
Date: Mon, 18 Sep 2023 10:17:26 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Jonathan Cameron <jonathan.cameron@huawei.com>
Cc: Rob Herring <robh@kernel.org>, Lizhi Hou <lizhi.hou@amd.com>,
	Andrew Lunn <andrew@lunn.ch>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	max.zhen@amd.com, sonal.santan@amd.com,
	stefano.stabellini@xilinx.com
Subject: Re: [PATCH V13 0/5] Generate device tree node for pci devices
Message-ID: <ZQf5huX2AMuf9kHC@smile.fi.intel.com>
References: <1692120000-46900-1-git-send-email-lizhi.hou@amd.com>
 <ZP96feVs2ev7098Y@smile.fi.intel.com>
 <CAL_JsqKfQJFrd8MOdjW55cYdEb8yyPyR+P3ran9+X3dCwUgdyA@mail.gmail.com>
 <ZQGaSr+G5qu/8nJZ@smile.fi.intel.com>
 <20230915193008.6d87b8a0@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230915193008.6d87b8a0@bootlin.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 07:30:08PM +0200, Herve Codina wrote:
> On Wed, 13 Sep 2023 14:17:30 +0300
> Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> > On Tue, Sep 12, 2023 at 02:12:04PM -0500, Rob Herring wrote:
> > > On Mon, Sep 11, 2023 at 3:37 PM Andy Shevchenko
> > > <andriy.shevchenko@intel.com> wrote:  
> > > > On Tue, Aug 15, 2023 at 10:19:55AM -0700, Lizhi Hou wrote:  

...

> > > > Can you point out to the ACPI excerpt(s) of the description of anything related
> > > > to the device(s) in question?  
> > > 
> > > I don't understand what you are asking for.  
> > 
> > Through the email thread it was mentioned that this series was tested on the
> > ACPI enabled platform, Jonathan (IIRC) asked why do we need to have a shadow
> > DT for the something that ACPI already describes. That's why I'm trying to
> > understand if it's the case. and if so, how can we improve the approach.
> 
> Patches from Frank Rowand series [1] are needed to create an of_root_node if a DT
> was not provided by the firmware, bootloader, etc that run the kernel.
> 
> [1]: https://lore.kernel.org/lkml/20220624034327.2542112-1-frowand.list@gmail.com/
> 
> Current Lizhi's series creates nodes from the PCI host node during the PCI
> enumeration. It creates PCI-PCI bridge and PCI device nodes.
> 
> I use these series on an ACPI system.
> 
> I need one more missing component: the node related to the PCI host bridge
> This was the purpose of Clement's work. This work was not sent upstream yet and I
> am working on it in order to have a full tree from the of_root to the PCI device
> ie:
>  of_root                  <-- Frank Rowand series 
>    + of_host_pci_bridge   <-- Clement's work
>        + pci_bridge       <-- Current Lizhi series
>            + pci_bridge   <-- Current Lizhi series
>             ...
>              + pci_dev    <-- Current Lizhi series
> 
> Hope that this status helped.

Thanks for the explanation! I suppose it's better to have three series combined
into one and being sent with a better cover letter to explain all this. Also it
might make sense (in my opinion) to Cc Jonathan (I did it here). Sorry, Jonathan,
if you are not wanting this.

-- 
With Best Regards,
Andy Shevchenko



