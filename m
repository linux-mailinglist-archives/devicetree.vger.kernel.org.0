Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 746C53E2A47
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 14:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245728AbhHFMG0 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 6 Aug 2021 08:06:26 -0400
Received: from mail-lf1-f47.google.com ([209.85.167.47]:44971 "EHLO
        mail-lf1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243577AbhHFMG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 08:06:26 -0400
Received: by mail-lf1-f47.google.com with SMTP id c24so14156801lfi.11
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 05:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=XVmvTeyXELBVCg6vo2cIJGtn1D975gTZCQ8KE7HlkOs=;
        b=NCJz8DDvlAY+VSmnHfUNCD5ptzX9L9U7IagTlXASpJH9XbfJNFtw3fkxh6wceYIzeB
         3j9fHYsvHcbXCC4dCsJysc6W/1e7MHxFiGp81wfrimZfd7SWDMWQ/SEpJXpnPk+dbAZL
         JhdulNLdN8Var840rgwQhxafydQlT83/Nm6R6o42Z8pa1A2LsC6V2RAtJGVkAnApCMYA
         RPPctKTMJu68IaYaUgoF9owalqwgPdCUtFuDLsCOF2Sxwg178ybAJyUd1tNNP0QuWpLE
         m99MsxxzTNDFgkN3I+8O/j1Wz6MOWEFiBAVoB8eC0dQY4Jyqm5toO4OfnxJmI7wt5UT5
         aC/A==
X-Gm-Message-State: AOAM532jMrbtJGhXb9P2e9BiaTwaduHb1z3hXNSe9WfZGnPan9QkxqeF
        MPZD4HvtnS53snXIwbN+cdintTkG1qPTwg==
X-Google-Smtp-Source: ABdhPJyO9wy1jmb1A/ioNCb1kRY7RSo4OdWV2NBVWh4Dxs845VFklckvFXXnC7xf3c/gCyHnr6kHWg==
X-Received: by 2002:a05:6512:3682:: with SMTP id d2mr7768766lfs.50.1628251568722;
        Fri, 06 Aug 2021 05:06:08 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com. [209.85.167.42])
        by smtp.gmail.com with ESMTPSA id t9sm814128lfq.256.2021.08.06.05.06.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 05:06:08 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id f42so17421012lfv.7
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 05:06:08 -0700 (PDT)
X-Received: by 2002:a19:7101:: with SMTP id m1mr7602861lfc.233.1628251568146;
 Fri, 06 Aug 2021 05:06:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-53-maxime@cerno.tech>
 <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org> <20210722081616.arxwrn5krbaocymf@gilmour>
 <68e4820ead3107aa4e80dcaf9243bd11de5fce98.camel@aosc.io>
In-Reply-To: <68e4820ead3107aa4e80dcaf9243bd11de5fce98.camel@aosc.io>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Fri, 6 Aug 2021 20:05:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v65dAAc274JiZyTswuqGHn1tE9urJpTBv=is2CG1UT2CTA@mail.gmail.com>
Message-ID: <CAGb2v65dAAc274JiZyTswuqGHn1tE9urJpTBv=is2CG1UT2CTA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH 52/54] arm64: dts: allwinner: Remove regulator-ramp-delay
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 6, 2021 at 7:49 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> 在 2021-07-22星期四的 10:16 +0200，Maxime Ripard写道：
> > On Thu, Jul 22, 2021 at 12:55:53AM -0500, Samuel Holland wrote:
> > > On 7/21/21 9:04 AM, Maxime Ripard wrote:
> > > > The regulator-ramp-delay property isn't documented in the binding
> > > > for
> > > > the AXP806, and it's ignored by the driver. Remove those
> > > > properties.
> > >
> > > This is a generic regulator property, parsed by
> > > of_get_regulation_constraints, which is called by
> > > regulator_of_get_init_data in the regulator core. And it appears in
> > > bindings/regulator/regulator.yaml. I believe the binding needs to be
> > > fixed, not the device trees.
> >
> > It's indeed parsed by the regulator framework, but then it calls into
> > the driver if that property is set using set_ramp_delay if it's set.
>
> Not only is it used for set_ramp_delay, but it's also used to calculate
> a post-change delay, see the following position (it can be overrided by
> a custom set_voltage_time in the driver):
>
> https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L3339

Having just dug through the regulator core code at work, I agree.

Furthermore, the commit log for this addition specifically mentions the
reason for adding this property is to provide a (guessed) ramp rate for
the core to do a proper delay for the regulator to ramp up, not to set
the actual ramp rate in hardware.


ChenYu


[1] https://git.kernel.org/torvalds/c/fe79ea577be81e1e71642826ab00e676dc59c194

> >
> > https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L1378
> >
> > We don't set that hook for the AXP806 DCDC-A and DCDC-E regulators
> > (that
> > use AXP_DESC_RANGES) at all:
> >
> > https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-regulator.c#L343
> >
> > And the only implementation we have (set for AXP_DESC and AXP_DESC_IO)
> > works only for the AXP209:
> >
> > https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-regulator.c#L368
> >
> > So, it just looks like those properties have never been tested since
> > they were just ignored.
> >
> > Maxime
> >
>
> --
> You received this message because you are subscribed to the Google Groups "linux-sunxi" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-sunxi+unsubscribe@googlegroups.com.
> To view this discussion on the web, visit https://groups.google.com/d/msgid/linux-sunxi/68e4820ead3107aa4e80dcaf9243bd11de5fce98.camel%40aosc.io.
