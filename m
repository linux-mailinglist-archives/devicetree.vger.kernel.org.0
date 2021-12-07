Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 437D846BAE2
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 13:17:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236287AbhLGMUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 07:20:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236226AbhLGMUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 07:20:35 -0500
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50DFEC061354
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 04:17:05 -0800 (PST)
Received: by mail-vk1-xa33.google.com with SMTP id 188so9114549vku.8
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 04:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/shVBi6JlRgjZTPddZCIWjR1bu5s4CCzjOrgUchEDkI=;
        b=e7/TY4gOh3+cE4hbY2wgLdgFALgqzNBVaatvNUV2/yBzXYjgbVN/BHQtzHFmJzh7DL
         2qzJtmSPG/QZof/R/Tasc6J7Mr+WXwrOh5jqSl/+J6+ypqPXR6dpeSway3BjIYS4XvmT
         7RDj5/MRtYTSSZryzfTJcKOobxbwO3U3SfRilM8+CG12IaIgB/JqDPSs1IXIwkZ4mP4y
         VU67Zm6P5PwUNA9QP+J0UHIP0hjzlP1fkyO9VZZypMETe1JZOR5LWKOMuOjfyVWAEvLJ
         9WeRjFZh9NxxNG7TdxtIbqqNeiBGXInMU3flTK8PB6xM59E/+bWUb1PtRwVoArLEgrxG
         HfSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/shVBi6JlRgjZTPddZCIWjR1bu5s4CCzjOrgUchEDkI=;
        b=hDLg4BHt/3bpcJTYSL1skoNBtU8ALZ78Bwrsezga/QQ2CuLhB7FtqVuiLH5U/lGBCE
         QWRdRkLG7PdIyZweUuK8b8i0rgzN/6AZiEvTkyzcItrLJlte2ks7fjkQmBOxnBSYIPnO
         unoXmZ1ovdsUIvJDESUqGKPf3HIJXxw/YydP0UgFIbKveYX8ow3h6L9N20+FLZ2lqbOw
         UwRq4T+tKDB7Z9jrZBWC1asDNLv2ap+4NCIxPgncM7lHB2R1QhtbjVHlw7v1yGpMDeHq
         sk3OE0M8630vmU+GJzoHJTZ0/ezsuI+31yIITgmirs73/hj2z6odkRz/B+YHQtDLCJTn
         AD3A==
X-Gm-Message-State: AOAM531iZEp/SFSxVH6PYClJAtsilsoNREnt1/6dku8wqaBtLeYAr9RB
        FwibKmqsOOzyV5fjK9BaCKfqKgHMlo1UM4L7nRY3OQ==
X-Google-Smtp-Source: ABdhPJxuGChhAZ4kIiu4qir8hGvBsDCFBjU9JFoH+t8icaVEomxm0J2X8jMAeeiM6ponxEUZHM06zKQNjmtJ+RJak40=
X-Received: by 2002:a1f:2849:: with SMTP id o70mr50408783vko.35.1638879423373;
 Tue, 07 Dec 2021 04:17:03 -0800 (PST)
MIME-Version: 1.0
References: <20211203183517.11390-1-semen.protsenko@linaro.org> <Ya5wNM/cAt1rwazv@robh.at.kernel.org>
In-Reply-To: <Ya5wNM/cAt1rwazv@robh.at.kernel.org>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Tue, 7 Dec 2021 14:16:52 +0200
Message-ID: <CAPLW+4np+Cynat7yxaayK-DUKLywyvENS0wnXb=LVXD5s9XBTw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Only show unique unit address warning for
 enabled nodes
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Masahiro Yamada <masahiroy@kernel.org>,
        David Virag <virag.david003@gmail.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 6 Dec 2021 at 22:19, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Dec 03, 2021 at 08:35:17PM +0200, Sam Protsenko wrote:
> > There are valid cases when two nodes can have the same address. For
> > example, in Exynos SoCs there is USI IP-core, which might be configured
> > to provide UART, SPI or I2C block, all of which having the same base
> > register address. But only one can be enabled at a time. That looks like
> > this:
> >
> >     usi@138200c0 {
> >         serial@13820000 {
> >             status = "okay";
> >         };
> >
> >         i2c@13820000 {
> >             status = "disabled";
> >         };
> >     };
> >
> > When running "make dt_binding_check", it reports next warning:
> >
> >     Warning (unique_unit_address):
> >     /example-0/usi@138200c0/serial@13820000:
> >     duplicate unit-address (also used in node
> >     /example-0/usi@138200c0/i2c@13820000)
> >
> > Disable "unique_unit_address" in DTC_FLAGS to suppress warnings like
> > that, but enable "unique_unit_address_if_enabled" warning, so that dtc
> > still reports a warning when two enabled nodes are having the same
> > address.
>
> Presumably you have a dts file needing the same thing, so I'll be
> expecting a patch for that too. That's in scripts/Makefile.lib BTW.
>

'-Wno-unique_unit_address' is already in scripts/Makefile.lib, and
when I add '-Wunique_unit_address_if_enabled' there, "make dtbs_check"
reports a lot of warnings (for ARCH=arm64 at least). Among obvious
bugs found, there are some cases like this:

        qfprom@784000 {
            compatible = "qcom,qfprom";
            reg = <0 0x00784000 0 0x8ff>;
            #address-cells = <1>;
            #size-cells = <1>;

            qusb2p_hstx_trim: hstx-trim-primary@1eb {
                reg = <0x1eb 0x1>;
                bits = <1 4>;
            };

            qusb2s_hstx_trim: hstx-trim-secondary@1eb {
                reg = <0x1eb 0x2>;
                bits = <6 4>;
            };
        };

where "dtbs_check" doesn't like duplicated "reg = <0x1eb 0x2>;" line.

I'll send the patch soon. Just want you to be on the same page about
side effects from that, because I'm not completely sure it's ok.

> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > Reported-by: Rob Herring <robh@kernel.org>
> > Suggested-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/Makefile | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
> > index c9abfbe3f0aa..41c555181b6f 100644
> > --- a/Documentation/devicetree/bindings/Makefile
> > +++ b/Documentation/devicetree/bindings/Makefile
> > @@ -65,7 +65,9 @@ DT_DOCS = $(patsubst $(srctree)/%,%,$(shell $(find_all_cmd)))
> >  override DTC_FLAGS := \
> >       -Wno-avoid_unnecessary_addr_size \
> >       -Wno-graph_child_address \
> > -     -Wno-interrupt_provider
> > +     -Wno-interrupt_provider \
> > +     -Wno-unique_unit_address \
> > +     -Wunique_unit_address_if_enabled
> >
> >  # Disable undocumented compatible checks until warning free
> >  override DT_CHECKER_FLAGS ?=
> > --
> > 2.30.2
> >
> >
