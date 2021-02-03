Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56C1E30E3FD
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 21:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231367AbhBCUYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 15:24:33 -0500
Received: from mail.kernel.org ([198.145.29.99]:49936 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231215AbhBCUYc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Feb 2021 15:24:32 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D48B64F41
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 20:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612383831;
        bh=lvzxnyQ4LGchCjzj64FoLucWel7XOLDmMGVWL1qPvZQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=VdWDVUNI16VXyZA7TZG9GmF+ACh/5Cx+reyaCPpK43rf1NFhbMDDAd8D7edIZYfq8
         bg/3m+CkFTnfNfz4M7IOk+lM0STm5lElElO1Y/GekFGDCLyCTWc7H77zYdVKpPmK3L
         2e0xfw5A80RyLQVLmA+uEZuUdUb3etSpCWwskPXAb6bThEIHEOpNYJQGv3TwkltKI8
         rZZZY1rPpAKMvmVX5Alu9WYGmB6zolS7ug1/LXRNLmTe6by5vYzjbUtdRjgcduJWfj
         juANhfz1Krq8Gs9u6HhON63xmmED4RyjqHn3tKhufv6u11p8/rd9mMbIJJShWuFZD3
         E9qLHUFi2Zn0w==
Received: by mail-ed1-f49.google.com with SMTP id i5so1193631edu.10
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 12:23:51 -0800 (PST)
X-Gm-Message-State: AOAM533xBZWDITGaJYZLV1JxIRZzRTj8Y+9YPiQEuzkpmLO2WwhV4g6m
        MAJZ3qazBEgJFEPE4wq7yGkW1mwm3Afiuyk4Jg==
X-Google-Smtp-Source: ABdhPJyA1Tss86MXlcAlrpQkuRucxUDHkyXLMCSLnXm4M3GuYqj5FdL/1GGY+hoHFP3n5n/8Lzi+2lUk0vrJYUOSMcA=
X-Received: by 2002:a05:6402:2c5:: with SMTP id b5mr5052176edx.258.1612383830012;
 Wed, 03 Feb 2021 12:23:50 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
 <20210202103623.200809-8-damien.lemoal@wdc.com> <CAL_JsqJNqKrsB3LJvBpNmY6H3V1c5x4duqB_0p8YKit4+ZYRBw@mail.gmail.com>
 <700da807-a5c8-a552-3d50-948b3ff6a734@gmail.com>
In-Reply-To: <700da807-a5c8-a552-3d50-948b3ff6a734@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 3 Feb 2021 14:23:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK-zuhq=rkHyXPMbcGyFhMdfShZYeNhSzLbCu8c7RvCGQ@mail.gmail.com>
Message-ID: <CAL_JsqK-zuhq=rkHyXPMbcGyFhMdfShZYeNhSzLbCu8c7RvCGQ@mail.gmail.com>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Sean Anderson <seanga2@gmail.com>
Cc:     Damien Le Moal <damien.lemoal@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 6:01 PM Sean Anderson <seanga2@gmail.com> wrote:
>
> On 2/2/21 2:02 PM, Rob Herring wrote:
> > On Tue, Feb 2, 2021 at 4:36 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
> >>
> >> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
> >> interrupts property description and maxItems. Also add the standard
> >> ngpios property to describe the number of GPIOs available on the
> >> implementation.
> >>
> >> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
> >> of this gpio controller in the Canaan Kendryte K210 SoC. If this
> >> compatible string is used, do not define the clocks property as
> >> required as the K210 SoC does not have a software controllable clock
> >> for the Sifive gpio IP block.
> >>
> >> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> >> Cc: Rob Herring <robh@kernel.org>
> >> Cc: devicetree@vger.kernel.org
> >> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> >> ---
> >>   .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
> >>   1 file changed, 18 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> >> index ab22056f8b44..2cef18ca737c 100644
> >> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> >> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> >> @@ -16,6 +16,7 @@ properties:
> >>         - enum:
> >>             - sifive,fu540-c000-gpio
> >>             - sifive,fu740-c000-gpio
> >> +          - canaan,k210-gpiohs
> >>         - const: sifive,gpio0
> >>
> >>     reg:
> >> @@ -23,9 +24,9 @@ properties:
> >>
> >>     interrupts:
> >>       description:
> >> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
> >> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
> >>       minItems: 1
> >> -    maxItems: 16
> >> +    maxItems: 32
> >>
> >>     interrupt-controller: true
> >>
> >> @@ -38,6 +39,10 @@ properties:
> >>     "#gpio-cells":
> >>       const: 2
> >>
> >> +  ngpios:
> >> +    minimum: 1
> >> +    maximum: 32
> >
> > What's the default as obviously drivers already assume something.
>
> The driver currently assumes 16. However, as noted in reply to Atish,
> the number of GPIOs is configurable.

So you need a 'default: 16' here.

> > Does a driver actually need to know this? For example, does the
> > register stride change or something?
>
> No. I believe that the number of GPIOs sets which bits in the control
> registers are valid. So the maximum number of GPIOs is the word width of
> the bus.

So like register access size (e.g. readw vs readl)? If so, we have
'reg-io-width' for that purpose.

> > Please don't add it if the only purpose is error check your DT (IOW,
> > if it just checks the max cell value in gpios phandles).
>
> Why not? This seems like exactly the situation this property was
> designed for.

Because it is redundant. All the GPIO lines you want to use should be
connected to something with a *-gpios property. If not, then that's a
failure to describe part of the h/w.

For comparison, we generally don't define how many interrupts an
interrupt controller has. Or how many power-domains a power domain
provider has. I can go on with every provider/consumer binding...

Rob
