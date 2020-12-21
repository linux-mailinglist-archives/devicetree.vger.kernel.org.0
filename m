Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 436B72E0183
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 21:26:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725807AbgLUUZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 15:25:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbgLUUZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 15:25:05 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72A59C0613D6
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 12:24:24 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 23so26663152lfg.10
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 12:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Uo62cfbGwqBQ1vi9h4r6gnV/BJOfoFEQHUI1QVrChw8=;
        b=TIu4KLVS+9Rm0KlbAYuebGgAAEETKA/S4ozhFubA1CGQ3UHtjkr9UIThiEcppTHkOv
         3hy6J9dPdGLcWVK39btAeBmlFwTQKfPEyPnLcBGU8uvjjdd5QNHSZ4VN9jpu8cqS9aTI
         GC6uVjtFbHkZrizklm74Bh85+NSpWQp7mGMiGF2ETFAl9Qy1mbCr6ErhOvcl3rHrNhqY
         PP8BjuqW+5Vs58FaTIs9eB2IP82hjchyPkPrNHXP1oufzKfd5NBkUkmUkw3d0l7YTRln
         ic6W8HxOlXZhSMXJv8z2oyVs6ngSRkGJcf/NiUWy1/39R1v8DujTPqn5Pc1aSGNpnWdr
         9wdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Uo62cfbGwqBQ1vi9h4r6gnV/BJOfoFEQHUI1QVrChw8=;
        b=GBRxsOOL0u628zWg6KIvuIMWYfNEJsxLbnlxiVJsPps0ociwhNOX9tV5Pjn7MgWg2A
         h5aBeuQq8QzHgcW7VfTl+ADl8vLtHQ2eGBQk4kJP/krxGd8ftXneZ211mCwMpKFEt103
         1QKot11eBK/DUKGXNp3lOhYTUn3M33xzxCu1zmPTRD+I0BvPcF7VQ14Tbh9WfrL7bL5r
         umkIVEo825KDH5IfiQk9uWwY2muU3b/M55JhcooJXY8kr2enA6fmj9TuJrXip/ZT3duA
         wul303kK59b0siegyqXo1lUYMKJxWoo3VXMfPhWIT5JwC1FCNH/9AeYrXkqasVL4M0aa
         KgAg==
X-Gm-Message-State: AOAM531bm7TTZgXR193hTOvkn+uhnrQJzy5Np9UpCPsgKygiPE/pbs/B
        9W5164ZLZ07+4mhduqEcemLcFNXRlGKLXXf6toal3Q==
X-Google-Smtp-Source: ABdhPJxXidtKbU89ufDpI4Z3AewOMzKtB9PhbwEssgW9oSBIrG1zlpmXWFD85rLEvdIbkoXQLXJPxhqPwlsBgOgYO0E=
X-Received: by 2002:a05:651c:286:: with SMTP id b6mr8260337ljo.232.1608582262430;
 Mon, 21 Dec 2020 12:24:22 -0800 (PST)
MIME-Version: 1.0
References: <20201111091552.15593-1-Sergey.Semin@baikalelectronics.ru>
 <20201111091552.15593-17-Sergey.Semin@baikalelectronics.ru>
 <CALAqxLWGujgR7p8Vb5S_RimRVYxwm5XF-c4NkKgMH-43wEBaWg@mail.gmail.com> <20201219110603.GA8061@kozik-lap>
In-Reply-To: <20201219110603.GA8061@kozik-lap>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 21 Dec 2020 12:24:11 -0800
Message-ID: <CALAqxLWAFs+8VKKuMMg2gyfGXgQSjaWv9H5ayuohEK9m6OS3TA@mail.gmail.com>
Subject: Re: [PATCH v2 16/18] arm64: dts: hi3660: Harmonize DWC USB3 DT nodes name
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Felipe Balbi <balbi@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Wei Xu <xuwei5@hisilicon.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        lkml <linux-kernel@vger.kernel.org>,
        YongQin Liu <yongqin.liu@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 19, 2020 at 3:06 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Fri, Dec 18, 2020 at 09:11:42PM -0800, John Stultz wrote:
> > On Wed, Nov 11, 2020 at 1:22 AM Serge Semin
> > <Sergey.Semin@baikalelectronics.ru> wrote:
> > >
> > > In accordance with the DWC USB3 bindings the corresponding node
> > > name is suppose to comply with the Generic USB HCD DT schema, which
> > > requires the USB nodes to have the name acceptable by the regexp:
> > > "^usb(@.*)?" . Make sure the "snps,dwc3"-compatible nodes are correctly
> > > named.
> > >
> > > Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > > Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > ---
> > >  arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > > index d25aac5e0bf8..aea3800029b5 100644
> > > --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > > +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> > > @@ -1166,7 +1166,7 @@ usb_phy: usb-phy {
> > >                         };
> > >                 };
> > >
> > > -               dwc3: dwc3@ff100000 {
> > > +               dwc3: usb@ff100000 {
> > >                         compatible = "snps,dwc3";
> > >                         reg = <0x0 0xff100000 0x0 0x100000>;
> >
> >
> > Oof. So this patch is breaking the usb gadget functionality on HiKey960 w/ AOSP.
> >
> > In order to choose the right controller for gadget mode with AOSP, one
> > sets the "sys.usb.controller" property, which until now for HiKey960
> > has been "ff100000.dwc3".
> > After this patch, the controller isn't found and we would have to
> > change userland to use "ff100000.usb", which would then break booting
> > on older kernels (testing various LTS releases on AOSP is one of the
> > key uses of the HiKey960).
> >
> > So while I understand the desire to unify the schema, as HiKey960
> > really isn't likely to be used outside of AOSP, I wonder if reverting
> > this one change is in the best interest of not breaking existing
> > userland?
>
> The node names are not part of an ABI, are they? I expect only
> compatibles and properties to be stable. If user-space looks for
> something by name, it's a user-space's mistake.  Not mentioning that you
> also look for specific address... Imagine remapping of addresses with
> ranges (for whatever reason) - AOSP also would be broken? Addresses are
> definitely not an ABI.

Though that is how it's exported through sysfs.

In AOSP it is then used to setup the configfs gadget by writing that
value into /config/usb_gadget/g1/UDC.

Given there may be multiple controllers on a device, or even if its
just one and the dummy hcd driver is enabled, I'm not sure how folks
reference the "right" one without the node name?

I understand the fuzziness with sysfs ABI, and I get that having
consistent naming is important, but like the eth0 -> enp3s0 changes,
it seems like this is going to break things.

Greg? Is there some better way AOSP should be doing this?

thanks
-john
