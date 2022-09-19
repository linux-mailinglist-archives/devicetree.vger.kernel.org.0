Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C36E65BCB4C
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbiISL4u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:56:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiISL4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:56:02 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 755632C67D
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:55:16 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id w125so14284103oig.3
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=zfElrFtR5/dvwk4DnkKuHALk+suZTnoFcxg3Kb3B7GE=;
        b=pF8KahUA3F1QpiVpp+U9zLeKOVbLNbcuK6GVEtSjKmzbkN0ChBH8BUuGUfG5A+paVM
         ZLrJWeI5J1w8OCksT5fz2mO1LrtOBIFnrL3VQcxqdc/MERGl9TwG9t8JYsd1SlcNp6Jo
         ghsXq9oOYLw65EbCL3hxMGqOAp3MNgkUYisyLpn3nkRHb+zT5zQO74vzxL6LxxgsFAGf
         3ykeGNIl7QzKvFWS8x6O8AV3dWtkRTNyG6hQirWvs1l8qlsbGe6fEn+juOZg3ro6ml6H
         k9O00YQYoOIWWDllqYlrLwgL3E6Re7p1GRkhCi+KYC1kdGxIHaRGku3nxBPCltV4wbDN
         gQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=zfElrFtR5/dvwk4DnkKuHALk+suZTnoFcxg3Kb3B7GE=;
        b=v2jJqYsmWcYLnxgEjE3Ze76sCT2w+1STQNrNyMk51MIE4N+Svg1EPsjLbQmaZtSr/b
         tPJ6zOnJKgfilzitBiJUQ5hiNymOUwW3V5Fy+2d2e2+QhQIESvGCvtRkDc/o9+ZwSHvb
         LlYegvdlCwMZ2wPaQfgOB1aPyu4lmNr3G00CXemLnvCwMMUy9gv0Unf10LRHX9//GSOq
         vdVnx+PTr2DXCinXBf+fVbhZlWNeAdTntcoFPAm2J/B3qsoYIu/tIIkPkKS35ePutyW1
         zN5UpiaBFrurNqKUeZnuPwDsZP+x/qteqNCrcelXo5MHZf9ao1LRXqQFKt5JvYCieCq5
         A7iA==
X-Gm-Message-State: ACrzQf13ch1cAMpGYrPrTphFTVWAZmmCglWuHED6ZYFzv3+AEbzp7L4M
        6OEM3fp2VSvAQM05CQWb+BRtkYZ3r8PlgY4tWv9uz6rpY5lqhg==
X-Google-Smtp-Source: AMsMyM7jUZA9uRKTXtDZqziYSvRhYj5PCEQEn3/+yEyTUvKtifC/5q7y+E2dkqGQohKyi1lx1icaHEZ3rRrWRQAblZs=
X-Received: by 2002:a05:6808:23ca:b0:350:92c4:3422 with SMTP id
 bq10-20020a05680823ca00b0035092c43422mr3418863oib.144.1663588515898; Mon, 19
 Sep 2022 04:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220916043415.489179-1-sergio.paracuellos@gmail.com> <b5fe0746-44d9-9513-8190-b55ec984b603@linaro.org>
In-Reply-To: <b5fe0746-44d9-9513-8190-b55ec984b603@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 13:55:04 +0200
Message-ID: <CAMhs-H_91RJ0thPP_RXKKPk4WihcfH=t2ww01Sk1K8ono+UF=A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 19, 2022 at 1:28 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/09/2022 06:34, Sergio Paracuellos wrote:
> > MIPS CPU interrupt controller bindings used text format, so migrate them
> > to YAML.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> You keep cc-ing not current address...

I will rebase this in a recent kernel and update mail addresses,
thanks and sorry for inconvenience.

>
> > ---
> >  .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
> >  .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
> >  2 files changed, 46 insertions(+), 47 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> > new file mode 100644
> > index 000000000000..2db2ec816534
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/mti,cpu-interrupt-controller.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MIPS CPU Interrupt Controller bindings
> > +
> > +description: >
> > +   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
> > +   IRQs from a devicetree file and create a irq_domain for IRQ controller.
> > +
> > +   With the irq_domain in place we can describe how the 8 IRQs are wired to the
> > +   platforms internal interrupt controller cascade.
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> What about existing maintainers?

Understood. I search for files in the MAINTAINERS file and not for
directories. Will properly maintain original maintainers in the next
version.

>
> > +
> > +properties:
> > +  '#interrupt-cells':
> > +    const: 1
> > +
> > +  '#address-cells':
> > +    const: 0
> > +
> > +  compatible:
> > +    const: mti,cpu-interrupt-controller
>
> Compatible goes first.

Understood.

>
> > +
> > +  interrupt-controller: true
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - '#interrupt-cells'
> > +  - '#address-cells'
> > +  - compatible
>
> compatible goes first.

Understood.

>
> > +  - interrupt-controller
> > +
> > +examples:
> > +  - |
> > +    cpuintc {
>
> Node names should be generic.
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

This is the name used in most of the dts files in the
'arch/mips/boot/dts' folder of the kernel tree... I guess I can change
only the name in the binding example or should this match with real
dts files?

>
> > +      #address-cells = <0>;
> > +      #interrupt-cells = <1>;
> > +      interrupt-controller;
> > +      compatible = "mti,cpu-interrupt-controller";
>
>
> Best regards,
> Krzysztof

Thanks,
    Sergio PAracuellos
