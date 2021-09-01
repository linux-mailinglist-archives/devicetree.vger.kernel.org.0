Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46FFF3FD921
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 14:01:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233116AbhIAMBu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 08:01:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243941AbhIAMBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 08:01:49 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63FA8C061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 05:00:52 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id t15so4103067wrg.7
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 05:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JK6kRJSrXbJA7J85nnMO2GVwwyHjBoelMGPJ1c1OWrk=;
        b=ZCn9pLdXZLA751P/mQGlLXsZjVe4HZrnDMooJMGXQhVpxiD8UJcNUeedtaooMEqpM5
         KyuMjLonZTG9wnLFv4lNz2x+Ftrf71FWsgp0o09hjxwD/CnOB4AyVQnQkxcuXQWd8NNP
         +TEr5FWy33aQtyc0obV6TmvlWGzvA7R2hDMABmsLT7UTnfxvQTVxMb7uFsy+6P9MAIf5
         /0U+Tq4tl5y4+vy6SbfkSkEydgV1tAxVvM95cBf0IWaJmcot3eX/vqq0dxDz8fLe5VWo
         mCOU+BEqmE8VNfp6xxaJQMa0QawFgzrlbX7xStMDEwJlJ6l8aqNyjmYsFBzYkUTy6uWe
         xS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JK6kRJSrXbJA7J85nnMO2GVwwyHjBoelMGPJ1c1OWrk=;
        b=mcx2h31Gt3GzQDnF61j8a7hVs3SoU1FIVrd+jSLNnoo+HLe1mFVXmO3xDWEq7hUOks
         hDwa+qZl3y+m5mmD72ZTga9U16u7UgM9zCqoSm0Vb4VK+N9lCxzJ2R+e0bSqlEZDUgSQ
         GwbNZyFLrdSCohe4blqW2HLBrfVSXNWHgvzwsmX5vcvAtYFunaXf8N+MjseGFTv9ViHl
         FYqXckIOdd0eBQP0BdxUhsN61jR5LFLTdvMzXerI3+j9FsNh5IpXJKrN+VugJGhbwI3y
         QfT8O4U147R9buiA048tjnxUiqxnhK/GadyVLx3zwWmyWgLBhX0AamdnE9/nls7zYMfL
         5LVA==
X-Gm-Message-State: AOAM532VCNcuK1qAY1+CErO1WKXBgvqCFs4QJr2wL8F+tQON6eSr5u8n
        AjX7CCuWWV+XaY5azmNNfsfTqf1uxF8d15HfONhGCdMi66Q=
X-Google-Smtp-Source: ABdhPJzmsR8+8INzT7ymkKlmM911UHAjY59ObO0CD+XE3R1hrukQBpEZvSaHQ1OOD8lRWX/r1F5ousC00VLyv+Z4jEQ=
X-Received: by 2002:a5d:464f:: with SMTP id j15mr37728462wrs.325.1630497650858;
 Wed, 01 Sep 2021 05:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210830041729.237252-1-anup.patel@wdc.com> <20210830041729.237252-7-anup.patel@wdc.com>
 <YS7Xk/Np2yc1/wrb@robh.at.kernel.org>
In-Reply-To: <YS7Xk/Np2yc1/wrb@robh.at.kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Wed, 1 Sep 2021 17:30:39 +0530
Message-ID: <CAAhSdy2e8bPXkTodpbtNeEVX-iCxVeyNLYBkL0aCQBZ7wbSCzw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 06/11] dt-bindings: timer: Update SiFive CLINT
 bindings for IPI support
To:     Rob Herring <robh@kernel.org>
Cc:     Anup Patel <anup.patel@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Atish Patra <atish.patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 1, 2021 at 6:59 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Aug 30, 2021 at 09:47:24AM +0530, Anup Patel wrote:
> > The Linux RISC-V now treats IPIs as regular per-CPU IRQs. This means
> > we have to create a IPI interrupt domain to use CLINT IPI functionality
> > hence requiring a "interrupt-controller" and "#interrupt-cells" DT
> > property in CLINT DT nodes.
> >
> > Impact of this CLINT DT bindings change only affects Linux RISC-V
> > NoMMU kernel and has no effect of existing M-mode runtime firmwares
> > (i.e. OpenSBI).
>
> It appears to me you should fix Linux to not need these 2 useless
> properties. I say useless because #interrupt-cells being 0 is pretty
> useless.

Linux IRQCHIP framework only probes IRQCHIP DT nodes which
have "interrupt-controller" DT property. The "interrupt-cells" DT property
can be removed because as an interrupt controller SiFive CLINT
will only provide IPIs to arch code.

Regards,
Anup

>
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  .../bindings/timer/sifive,clint.yaml          | 20 ++++++++++++++-----
> >  arch/riscv/boot/dts/canaan/k210.dtsi          |  2 ++
> >  .../boot/dts/microchip/microchip-mpfs.dtsi    |  2 ++
> >  3 files changed, 19 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > index a35952f48742..9c8ef9f4094f 100644
> > --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > @@ -43,6 +43,12 @@ properties:
> >
> >    interrupts-extended:
> >      minItems: 1
> > +    maxItems: 4095
> > +
> > +  "#interrupt-cells":
> > +    const: 0
> > +
> > +  interrupt-controller: true
> >
> >  additionalProperties: false
> >
> > @@ -50,15 +56,19 @@ required:
> >    - compatible
> >    - reg
> >    - interrupts-extended
> > +  - interrupt-controller
> > +  - "#interrupt-cells"
> >
> >  examples:
> >    - |
> >      timer@2000000 {
> >        compatible = "sifive,fu540-c000-clint", "sifive,clint0";
> > -      interrupts-extended = <&cpu1intc 3 &cpu1intc 7
> > -                             &cpu2intc 3 &cpu2intc 7
> > -                             &cpu3intc 3 &cpu3intc 7
> > -                             &cpu4intc 3 &cpu4intc 7>;
> > -       reg = <0x2000000 0x10000>;
> > +      interrupts-extended = <&cpu1intc 3>, <&cpu1intc 7>,
> > +                            <&cpu2intc 3>, <&cpu2intc 7>,
> > +                            <&cpu3intc 3>, <&cpu3intc 7>,
> > +                            <&cpu4intc 3>, <&cpu4intc 7>;
> > +      reg = <0x2000000 0x10000>;
> > +      interrupt-controller;
> > +      #interrupt-cells = <0>;
> >      };
> >  ...
> > diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
> > index 5e8ca8142482..67dcda1efadb 100644
> > --- a/arch/riscv/boot/dts/canaan/k210.dtsi
> > +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
> > @@ -105,6 +105,8 @@ clint0: timer@2000000 {
> >                       reg = <0x2000000 0xC000>;
> >                       interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
> >                                             &cpu1_intc 3 &cpu1_intc 7>;
> > +                     #interrupt-cells = <0>;
> > +                     interrupt-controller;
> >               };
> >
> >               plic0: interrupt-controller@c000000 {
> > diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > index b9819570a7d1..67fb41439f20 100644
> > --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> > @@ -168,6 +168,8 @@ &cpu1_intc 3 &cpu1_intc 7
> >                                               &cpu2_intc 3 &cpu2_intc 7
> >                                               &cpu3_intc 3 &cpu3_intc 7
> >                                               &cpu4_intc 3 &cpu4_intc 7>;
> > +                     #interrupt-cells = <0>;
> > +                     interrupt-controller;
> >               };
> >
> >               plic: interrupt-controller@c000000 {
> > --
> > 2.25.1
> >
> >
