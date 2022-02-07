Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59B034AB936
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 12:01:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229940AbiBGK7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 05:59:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239338AbiBGKzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 05:55:10 -0500
X-Greylist: delayed 63 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 07 Feb 2022 02:55:09 PST
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33659C043181
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 02:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1644231309; x=1675767309;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=kWDoJfiVMEWlhxGnvqCWkU+/STOJWI6BKalo40xEaL0=;
  b=jf9Jabigmo9X2ttkOg6myjS6h2vH8OLYUktzmGt1oBSaaDptN7ujp2AY
   3hb5w94E2NCe5FLBghJCl1HmNRlpr5aZ/3A1PBv/JWs5HH1CBm0SYS5OP
   EbUP+PbFscLc2dKRRgI0oppVdAhV/Y/Oj897JerbHYZqXgDb4hjvjg5mA
   BKGAOQn5mR0j9qlZPxva7KX618r2KtIa6isl00pMgO3IxtcCp2AzQxIMn
   K3FSCoF/tDucb3ChQzcOdz0iZTnGgoxh+qDVJLAuStzLbElPI9W9J27Hl
   qvKFEu6FHy9jMxQfY+QFQH+dzNfOfE6987W1Wjx1qib2evi8FXN3GTjRF
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="229339650"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; 
   d="scan'208";a="229339650"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2022 02:53:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; 
   d="scan'208";a="540047201"
Received: from smile.fi.intel.com ([10.237.72.61])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2022 02:53:54 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
        (envelope-from <andriy.shevchenko@linux.intel.com>)
        id 1nH1df-001rwM-At;
        Mon, 07 Feb 2022 12:52:55 +0200
Date:   Mon, 7 Feb 2022 12:52:55 +0200
From:   Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>
Subject: Re: [PATCH v3 1/3] iio: dac: add support for ltc2688
Message-ID: <YgD6B2OsPgVwbVvT@smile.fi.intel.com>
References: <20220121142501.151-1-nuno.sa@analog.com>
 <20220121142501.151-2-nuno.sa@analog.com>
 <Yf60A1UkbBtQ68qv@smile.fi.intel.com>
 <20220205184459.7aa8e5d5@jic23-huawei>
 <Yf7G91IuwAw0trgz@smile.fi.intel.com>
 <Yf7IxJKmAtgqT2rB@smile.fi.intel.com>
 <20220206151624.58589a05@jic23-huawei>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220206151624.58589a05@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Feb 06, 2022 at 03:16:24PM +0000, Jonathan Cameron wrote:
> On Sat, 5 Feb 2022 20:58:12 +0200
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > On Sat, Feb 05, 2022 at 08:50:31PM +0200, Andy Shevchenko wrote:

...

> > https://lore.kernel.org/lkml/20211205190101.26de4a57@jic23-huawei/T/#u
> > 
> > So, the fwnode has a correct implementation, and we may use it here.
> > 
> I wasn't totally sure of the conclusion of that discussion.
> a) Fine to just use device_for_each_child_node() for this case and not worry
> about it.

Yes. As he mentioned the device_for_each_child_node() is implemented correctly
from day 1.

> b) Worth adding device_for_each_available_child_node() with the same
> implementation

I believe it's an opposite prospective, i.e. drop
of_for_each_available_child_node() and use the of_for_each_child_node()
everywhere.

> c) (possibly workaround / avoid the issue) Use device_for_each_child_node()
> but also check validity (hopefully compiler would remove the check)
> in order to act as documentation.

Makes no sense because implementation does it already.

> I'm fine with any of the above.

-- 
With Best Regards,
Andy Shevchenko


