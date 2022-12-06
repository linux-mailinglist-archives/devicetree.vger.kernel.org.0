Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A863644E87
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 23:25:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbiLFWZn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 17:25:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiLFWZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 17:25:43 -0500
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88C9546650
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 14:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670365542; x=1701901542;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qRoG6ojWyt2gsYvYI328yD8+tc76LgZvQ/ndWEVo0qU=;
  b=kGH+L7mfV7O//oMCJwNszNA1Xg23OGnqewH0AXmIEFUYL9bJXMAQvUcU
   GoHOtgNGnaoKn8UoJ8b66ZqApMed6Tdinb01HUXMM/EXmssIJcQeaDnO1
   UjF5Lk4aj8xVNoKeq0GRoHEQdnDyiRwelIs943BdwHVWwnr/KhBBWWuLu
   jyK6grSNpIb9bC8Pnax/IKUFkJV/1mmPK2CATdHXkgrZZG3Mk4TYII7oP
   LGAcRqrkDDE0/YEX8r0J0u+eKnbxkNpkXTClFybGe/juvLWNfijiTBtPr
   y8hdRKyC2vp7YwN4sP7uF/VvqAOgPqhy90580gEKZi/AuWUk4lv7uarDA
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="317888730"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; 
   d="scan'208";a="317888730"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 14:25:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="648496127"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; 
   d="scan'208";a="648496127"
Received: from smile.fi.intel.com ([10.237.72.54])
  by fmsmga007.fm.intel.com with ESMTP; 06 Dec 2022 14:25:40 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
        (envelope-from <andriy.shevchenko@intel.com>)
        id 1p2gNe-005UXI-34;
        Wed, 07 Dec 2022 00:25:38 +0200
Date:   Wed, 7 Dec 2022 00:25:38 +0200
From:   Andy Shevchenko <andriy.shevchenko@intel.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: Mixed types of values inside a single property
Message-ID: <Y4/BYgAQgIfahIzH@smile.fi.intel.com>
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
 <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
 <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com>
 <b958733a-18a0-d916-930a-e7efb481dd06@linaro.org>
 <Y3uZzR7wYy3lY++/@smile.fi.intel.com>
 <CAL_JsqKrGXMhvEGaOYg=6bNEHyakTio6DhFqLEai2BH8nEf7ig@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqKrGXMhvEGaOYg=6bNEHyakTio6DhFqLEai2BH8nEf7ig@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 06, 2022 at 09:31:49AM -0600, Rob Herring wrote:
> On Mon, Nov 21, 2022 at 9:31 AM Andy Shevchenko
> <andriy.shevchenko@intel.com> wrote:
> >
> > On Mon, Nov 21, 2022 at 03:23:53PM +0100, Krzysztof Kozlowski wrote:
> > > On 21/11/2022 15:11, Andy Shevchenko wrote:
> > > > On Mon, Nov 21, 2022 at 02:52:37PM +0100, Krzysztof Kozlowski wrote:
> > > >> On 21/11/2022 13:59, Andy Shevchenko wrote:
> > > >>>
> > > >>> Hi, Rob and Krzysztof!
> > > >>>
> > > >>> Today on SO one question [1] was popped up, and I, remembering a bit of
> > > >>> the code of device properties in the Linux kernel, was a bit surprised of it
> > > >>> in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
> > > >>> that either.
> > > >>>
> > > >>> Can the specification be a bit more clear about that? Or is it me and the OP of
> > > >>> that question who missed something in the DT spec?
> 
> Please use devicetree-spec list for questions like this because it's a
> spec question and I only see these on my periodic search for non-patch
> emails.

Sure. I will try to not forget this next time I will have a question against DT
spec (I don't expect this will be anytime soon, though).

> > > >>> [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree
> > > >>
> > > >> I saw question on Stackoverflow and I saw there answers, but what is the
> > > >> question to us?
> > > >
> > > > Does the specification allows mixed types of the values in the same property?
> > > > Because reading it doesn't give a hint.
> > >
> > > I think DT spec allows it ("Format is specific to the property. See the
> > > property definition.")
> >
> > And the quoted sentence confuses me. Is it related to _defined_ only properties
> > (that are in the same document) or is it to any property, then what does the
> > second part actually mean in the latter case: "see the property definition".
> > Where?
> 
> Any property in the schemas. (I would say if not in the spec, but
> everything in the spec should have a schema.)

Maybe we should add these words explicitly there?

> > It might be though it's lack of my understanding the English language
> > (not a native speaker).
> >
> > > but DT schema mostly not (finite list of property
> > > types). To some level DT schema accepts mixes, e.g. phandle-array
> > > containing phandle and offsets, but that's because phandle is actually
> > > also a number (dtschema/schemas/types.yaml).
> 
> At the spec level, properties are just byte strings. They can be
> anything including a file (i.e. FIT images). In theory, you could make
> properties C structs if you wanted.
> 
> However, since there is 0 type or field size information in the DT
> itself, we don't mix data types or sizes. That's enforced at the
> schema level and by what APIs we have to read properties.

Thanks for clarification!

-- 
With Best Regards,
Andy Shevchenko


