Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39BBE63253C
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 15:13:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbiKUONI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 09:13:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbiKUOMT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 09:12:19 -0500
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FFF51408E
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1669039876; x=1700575876;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=EuKE8rPZGcZiD0oulV4LjEGLESrf/eVNaA3SrZP6qI4=;
  b=FbKBGAEf/32rJ3pRwezRkVEUpNdHvchUBa0JyX2ygDGHkCP0fYKVL9rz
   JbOq/6s+oSjHHRqdfpesy6KmdmXJ2jD16GYhFsAGo18PXK/XtMiSSzVaN
   dpAXy13uuTBHrbnqcbChoLmh2VxBd+hsNsHGxIbQrabNE3JTq9HMhKb6s
   oGT8JH1IUr9KoG/mgwbbsLpub4VSonVhNBBEghWcSo38PYk6ZVDz/OMRk
   PSKzOZOWAv2xLmeN4Xb+Cbj6OyFPdZ75RYv5NbnjE9JOUbGpeD90xdys6
   3Dz0nQbiC+v7Zm9mz2Dby4oshJ03KVc+MEnHDBC9YpEHMuaQQBkiZC3qI
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="399851810"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="399851810"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2022 06:11:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="704573984"
X-IronPort-AV: E=Sophos;i="5.96,181,1665471600"; 
   d="scan'208";a="704573984"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2022 06:11:11 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
        (envelope-from <andriy.shevchenko@intel.com>)
        id 1ox7Vt-00FJ0N-1K;
        Mon, 21 Nov 2022 16:11:09 +0200
Date:   Mon, 21 Nov 2022 16:11:09 +0200
From:   Andy Shevchenko <andriy.shevchenko@intel.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: Mixed types of values inside a single property
Message-ID: <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com>
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
 <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 02:52:37PM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2022 13:59, Andy Shevchenko wrote:
> > 
> > Hi, Rob and Krzysztof!
> > 
> > Today on SO one question [1] was popped up, and I, remembering a bit of
> > the code of device properties in the Linux kernel, was a bit surprised of it
> > in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
> > that either.
> > 
> > Can the specification be a bit more clear about that? Or is it me and the OP of
> > that question who missed something in the DT spec?
> > 
> > [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree
> 
> I saw question on Stackoverflow and I saw there answers, but what is the
> question to us?

Does the specification allows mixed types of the values in the same property?
Because reading it doesn't give a hint.

-- 
With Best Regards,
Andy Shevchenko


