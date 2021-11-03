Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D46D4445E1
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 17:29:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232101AbhKCQcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 12:32:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:34576 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232762AbhKCQcB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Nov 2021 12:32:01 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B71466103B
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 16:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635956964;
        bh=xOABt8qeC9A9l4bh2g20t12RpjOx+xP+axBwdu8bH/I=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=GZSJjQ48wZjcfH7tl25HcL8kmr+AlKyxrxBqT76PSP4cejcR1Nb6OYRxNd755zSR4
         qALHv9ix8TTb9DQYrPAi2g1Zurg+RmG8RD3ciMPP0RhjCxUoBUcYDHHv3ONOmsRkC2
         ncY7swG6dRw6Qow9V3T2SmAhP9urLxODoaeIPkb18qC6V23JbrhvJC7X+Y5ACkrR8R
         ar2Voo7bRtH0IdHcKx30OHc62Dajg3lVN99knoQuxuk/0ebu64Z6gITTUoEGZJHpE4
         BxVE9XX2ve27Fm7OarEnUCqAezOxUeFOtHg4Go6UM1T+F9m5ZNx0IhLgGUOA7ydFo9
         7BgqRm1mioNYg==
Received: by mail-ed1-f45.google.com with SMTP id 5so10927150edw.7
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 09:29:24 -0700 (PDT)
X-Gm-Message-State: AOAM530lSbA0Bc95IjKmGn/w2WrYNzRSNSn3nFoy9xvzSdJp4drAnm7R
        T54dBgaaALp0d2s918aJsNv9kBsuIpIxy7sf1w==
X-Google-Smtp-Source: ABdhPJwrgCpf59XLe8AzG7aA287qwiUonBjeXHhzxNgyHuhZcky+70ZcLVmG9yQtmb7fXidrSaVea6PBkVRNdzGFm1M=
X-Received: by 2002:a50:da06:: with SMTP id z6mr61608023edj.355.1635956959583;
 Wed, 03 Nov 2021 09:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com> <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
In-Reply-To: <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 3 Nov 2021 11:29:08 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
Message-ID: <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
Subject: Re: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add
 'clocks' as a required property
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     jae.hyun.yoo@intel.com, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
        Corey Minyard <minyard@acm.org>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 3, 2021 at 11:08 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> Hi Rob,
>
> On 11/2/2021 6:20 PM, Rob Herring wrote:
> > On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> >> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >>
> >> Add 'clocks' as a required property.
> >>
> >> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >> ---
> >> v1 -> v2:
> >> Changes sinve v1:
> >>   - Added 'clocks' property into kcs-bmc bindings using
> >>     'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
> >>     'aspeed-lpc.yaml' yet. The bindings merging could be done using a
> >>     separate patch later.
> >>
> >>   .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
> >>   1 file changed, 7 insertions(+)
> >>
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/patch/1549943
> >
> >
> > kcs@114: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> >
> > kcs@24: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >
> > kcs@28: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> >
> > kcs@2c: 'clocks' is a required property
> >       arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
> >       arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
> >
>
> #4/6 in this patch adds 'clocks' into aspeed-g5.dtsi and aspeed-g6.dtsi
> as a default property and all above dts files include the dtsi file so
> these warning shouldn't be seen. Is it a result after applying all
> changes in this series or just after cherry picking #5/6 patch only?

Only patch 5 is applied.

> I tested 'dtbs_check' before submitting this series I tested it again
> and got the same good result like below.
>
> Aren't the above warnings false positive? Or did I miss something?

What you missed is this is an ABI. You cannot make something required
that was not required before. If the driver follows the schema and
makes 'clocks' required, then old DTBs with a new kernel will break.

It's possible that 'clocks' was always required or that it never
worked without clocks, then this change is okay. Looking at this
patch, I have no way to know that. The commit message has to explain
that. A commit message needs to answer WHY are you making the change.
You don't really need WHAT the change is as anyone can read the diff.

Rob
