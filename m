Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7151E36F105
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 22:28:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237046AbhD2U3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 16:29:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:36446 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237043AbhD2U3X (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Apr 2021 16:29:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 551276140C
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 20:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1619728116;
        bh=0BnoRIh0x+jKrYCuNgZfUDseDnW+A57IwCVmCuujmSU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=LfQ1WNOTUvIsaLP7uwKGMXeQDdupD5sDiiuZ88DP1HAfLkUMuqMVYSKpnsJ3+7a8i
         F2kB4NUp5FxTxbZ4v3mC4XybiEeO7A6huS0ssS/X8/6t1Q3+Ywm8RkHjxoNQLc3/gB
         oyq5f0KXzjUCyI1PozXgd+MxT2eMVj6b/NJgt4HTcf9MpbL/KJiMcOsddzO8lk3bKy
         RgvOtedDK7HLq/hbyEC/tlsTzLhngv5BDHyevDq4dX8oo2K8kJnEdrn+IWlS9p1UVg
         BjtJD+hNtUK0KAsBPx2/1E0ggEbOQdt4/lNDzxYf+p75GI3wY1dkcvc01RAS+0PuFe
         aApK+lBzJqJbg==
Received: by mail-ed1-f42.google.com with SMTP id c22so16475108edn.7
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 13:28:36 -0700 (PDT)
X-Gm-Message-State: AOAM530BpTT0KDF43wmpVTJ6G3bBCOMTSqR2LpqD1eAK+wyq9Z4JhuMs
        P5TdLtGTjz8yHNdoYOhlq2/51xM4ygCri5lMnw==
X-Google-Smtp-Source: ABdhPJxMOUN64eXk3XGGtS2y8xfmwijWD3hopeTGvoXOCZbF0i4U0b0yB/FzcEwhUmrbaj/ZKMa2hoKcH1qqqwtX2Tw=
X-Received: by 2002:a05:6402:212:: with SMTP id t18mr1709820edv.165.1619728114787;
 Thu, 29 Apr 2021 13:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210424191946.69978-1-ezequiel@collabora.com>
 <20210424191946.69978-2-ezequiel@collabora.com> <20210429162542.GA1372880@robh.at.kernel.org>
 <7ecf337931cbd16432311d24397ae4506fc7fd1f.camel@collabora.com>
In-Reply-To: <7ecf337931cbd16432311d24397ae4506fc7fd1f.camel@collabora.com>
From:   Rob Herring <robh@kernel.org>
Date:   Thu, 29 Apr 2021 15:28:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLDPXmZ9hxJjPK1n6qhPEoRB80=4PBsRD0HE3LLktbtWQ@mail.gmail.com>
Message-ID: <CAL_JsqLDPXmZ9hxJjPK1n6qhPEoRB80=4PBsRD0HE3LLktbtWQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Collabora Kernel ML <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 29, 2021 at 12:03 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Thu, 2021-04-29 at 11:25 -0500, Rob Herring wrote:
> > On Sat, Apr 24, 2021 at 04:19:46PM -0300, Ezequiel Garcia wrote:
> > > Convert Rockchip Timer dt-bindings to YAML.
> > >
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > >  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
> > >  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
> > >  2 files changed, 67 insertions(+), 27 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > >  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > > deleted file mode 100644
> > > index d65fdce7c7f0..000000000000
> > > --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > > +++ /dev/null
> > > @@ -1,27 +0,0 @@
> > > -Rockchip rk timer
> > > -
> > > -Required properties:
> > > -- compatible: should be:
> > > -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> > > -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> > > -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> > > -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> > > -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> > > -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> > > -  "rockchip,rk3288-timer": for Rockchip RK3288
> > > -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> > > -  "rockchip,rk3399-timer": for Rockchip RK3399
> > > -- reg: base address of the timer register starting with TIMERS CONTROL register
> > > -- interrupts: should contain the interrupts for Timer0
> > > -- clocks : must contain an entry for each entry in clock-names
> > > -- clock-names : must include the following entries:
> > > -  "timer", "pclk"
> > > -
> > > -Example:
> > > -       timer: timer@ff810000 {
> > > -               compatible = "rockchip,rk3288-timer";
> > > -               reg = <0xff810000 0x20>;
> > > -               interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > > -               clocks = <&xin24m>, <&cru PCLK_TIMER>;
> > > -               clock-names = "timer", "pclk";
> > > -       };
> > > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > > new file mode 100644
> > > index 000000000000..f1bc3ac7abc8
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > > @@ -0,0 +1,67 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Timer Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> >
> > This should be someone that knows the h/w and cares about Rockchip.
> >
>
> Daniel wrote the driver, so I figured he'd care :)

Ah, then that's fine I guess. Given he is also the subsystem
maintainer I was confused.

> If not, perhaps Heiko (if he agrees)?
>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: rockchip,rk3288-timer
> > > +      - const: rockchip,rk3399-timer
> > > +      - items:
> > > +          - enum:
> > > +            - rockchip,rv1108-timer
> > > +            - rockchip,rk3036-timer
> > > +            - rockchip,rk3066-timer
> > > +            - rockchip,rk3188-timer
> > > +            - rockchip,rk3228-timer
> > > +            - rockchip,rk3229-timer
> > > +            - rockchip,rk3288-timer
> > > +            - rockchip,rk3368-timer
> > > +            - rockchip,px30-timer
> > > +          - const: rockchip,rk3288-timer
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    minItems: 2
> > > +    maxItems: 2
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      enum:
> > > +        - timer
> > > +        - pclk
> >
> > We can't define the order here? We should fix dts files if they are
> > inconsistent.
> >
>
> The driver requests the clocks by name, and unfortunately DTS
> rely on that.

That's good, then the OS doesn't care if you change it. Of course, I
didn't have to look to tell that. If the order varied, the OS would
have to use the names.

> We can change all the DTSI, but wouldn't that
> be too much trouble for something that is currently working fine?

It's not *all*. At least half are correct. Pick the order that's the majority.

> Why is the order important?

Because that's the DT convention. Why is random order important?

I don't really care so much on an individual binding, but overall if
defining the order doesn't cost anything then we should. The more
order is not defined, the more people are going to copy those
examples. Yes, there's a cost on fixing dts files, but if we're
writing schema to pass on existing dts files, what's the point of
schema?

Rob
