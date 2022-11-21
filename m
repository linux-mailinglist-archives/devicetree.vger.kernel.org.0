Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 583FE632845
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:33:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232430AbiKUPdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:33:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232459AbiKUPcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:32:54 -0500
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77770C75B6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 07:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1669044693; x=1700580693;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=PCN/3UtVKSf445Suy4iQh6vgbTN+hByL1d2OEArflhY=;
  b=Ke20yFwdJLNIpUIAAmkerWJtB4d47cCuxoj7TymCsJciJFO6MGUuNDqu
   2d1iE9P4Fy8TbPbnOGftKH7Yg5ODd+iAiKeVLwU+OqXipbzJiVdUlBKYV
   3jL1Yf2KJW82untsh+c4a/VYP4/v7rQvTHyV9XGaA5cEN7LT1e7Ryov7i
   5hpRirk3XAGl4/XONXi5xOu+62OGijoSnQSDc+ydQDqmRaElsOcMqGkFl
   PxtzpxYV0Vh7dQh7wktMqzxpxxKUyp4MOT6U2zncmRto4rOdY91DdtsBI
   Ku6j91BsXo+gzc1Gv9bZLkxpG9vQfkKp3jRCFrrMvwtQVXgWX1+7SbLs5
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313614839"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="313614839"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2022 07:31:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="815748117"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="815748117"
Received: from smile.fi.intel.com ([10.237.72.54])
  by orsmga005.jf.intel.com with ESMTP; 21 Nov 2022 07:31:26 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
        (envelope-from <andriy.shevchenko@intel.com>)
        id 1ox8lZ-00FKmI-1U;
        Mon, 21 Nov 2022 17:31:25 +0200
Date:   Mon, 21 Nov 2022 17:31:25 +0200
From:   Andy Shevchenko <andriy.shevchenko@intel.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: Mixed types of values inside a single property
Message-ID: <Y3uZzR7wYy3lY++/@smile.fi.intel.com>
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
 <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
 <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com>
 <b958733a-18a0-d916-930a-e7efb481dd06@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b958733a-18a0-d916-930a-e7efb481dd06@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 03:23:53PM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2022 15:11, Andy Shevchenko wrote:
> > On Mon, Nov 21, 2022 at 02:52:37PM +0100, Krzysztof Kozlowski wrote:
> >> On 21/11/2022 13:59, Andy Shevchenko wrote:
> >>>
> >>> Hi, Rob and Krzysztof!
> >>>
> >>> Today on SO one question [1] was popped up, and I, remembering a bit of
> >>> the code of device properties in the Linux kernel, was a bit surprised of it
> >>> in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
> >>> that either.
> >>>
> >>> Can the specification be a bit more clear about that? Or is it me and the OP of
> >>> that question who missed something in the DT spec?
> >>>
> >>> [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree
> >>
> >> I saw question on Stackoverflow and I saw there answers, but what is the
> >> question to us?
> > 
> > Does the specification allows mixed types of the values in the same property?
> > Because reading it doesn't give a hint.
> 
> I think DT spec allows it ("Format is specific to the property. See the
> property definition.")

And the quoted sentence confuses me. Is it related to _defined_ only properties
(that are in the same document) or is it to any property, then what does the
second part actually mean in the latter case: "see the property definition".
Where?

It might be though it's lack of my understanding the English language
(not a native speaker).

> but DT schema mostly not (finite list of property
> types). To some level DT schema accepts mixes, e.g. phandle-array
> containing phandle and offsets, but that's because phandle is actually
> also a number (dtschema/schemas/types.yaml).

-- 
With Best Regards,
Andy Shevchenko


