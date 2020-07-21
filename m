Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA9C227F1F
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 13:39:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729778AbgGULj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 07:39:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728071AbgGULjz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 07:39:55 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E8A2C061794
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 04:39:55 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id 184so2562350wmb.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 04:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0J627pM80T7+XlutPkaKlOVr/z1gAAVKrENSM8VXItA=;
        b=aomBaqjhstgNyLO0iG3oISEZgsZDk7I+CDVjJSDyjcwaHIcVOM0K5+HMK231PboQEK
         A2/ll23OKsSMzr4PBzWM/DbQPDdAXv8woUbnirpcylvahf9sCXpntRikrd5FDy6LQZ2B
         SmTb9NoSOXZFwQaGSGnrM85rIzJ/RYWvzWs9TqfX4QDozPArJJYYN0fR+XV8WYEazdak
         fqfgAyk+tRfLhx++g8eDu4I6cSvQqVY7/E7HpFo2iRa2PN0jocZFSwPjXCv94ELTWkDr
         ll6e0eO5qV6cSOnljZYyuajsWMjDhHTcfa6BE6Fz+nVCFLQK3gnfas6LdEJB9o1fiMwF
         ZjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0J627pM80T7+XlutPkaKlOVr/z1gAAVKrENSM8VXItA=;
        b=fLKpMIFxMPV8Yogxyo6rQsWB0maqI+60fiAaOC7suyHD2++1bEJJEsXzGh+dXEtHLc
         DMIhwwckzQ7d8YAetqRpuie5rV4Fht0UXWtmtIuqlLdEGBvSHJbNuXLgYWTnobs0TnDu
         Rw2ACnBjgBc+0U44o2XKVTamuWMQgjTyjf1hZFtcpl3TG1NeLf1YiQXo5EoNQSjYQhao
         p1U6vbzgX2JtUZ5hI4CD0nPKxutbMV8ISHHE4mYrJ9quIbwO203pvu/jAr8eabjJF9eq
         D74f8Lgfe40J4k2KHl5lOro1cUB3yMmULIVBfKw9YaEi/q1yeA7as3MRj1CsmIdQ2uP6
         Ty5g==
X-Gm-Message-State: AOAM530Lp0bl4el62aOTVnMHGGqJJbYtHJcc27NAj6DOctPh6sudiP0N
        pQB/1tZgcRczlwdZYUSPL3H+GECjJ3YdcLZ46yUXRg==
X-Google-Smtp-Source: ABdhPJynaPKpbU6Sa4qfZHuvA4C6P4PN6EGPDdcoeLrQHPieARti1aWDcQP+/gphRMVoWP2V8oJ4kkwKrU/hwUWo/t4=
X-Received: by 2002:a1c:2d91:: with SMTP id t139mr3589796wmt.3.1595331593814;
 Tue, 21 Jul 2020 04:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200717075101.263332-1-anup.patel@wdc.com> <20200717075101.263332-5-anup.patel@wdc.com>
 <CAOnJCULcffij3-d-TsQixj5TZdatBdUcC-y73L=W-+5h41ytKQ@mail.gmail.com>
In-Reply-To: <CAOnJCULcffij3-d-TsQixj5TZdatBdUcC-y73L=W-+5h41ytKQ@mail.gmail.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Tue, 21 Jul 2020 17:09:41 +0530
Message-ID: <CAAhSdy1cbKA9iwBPYMX5xaYFe_BxnB2Sm_ftHPPDq+96SeKbnA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] dt-bindings: timer: Add CLINT bindings
To:     Atish Patra <atishp@atishpatra.org>
Cc:     Anup Patel <anup.patel@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Emil Renner Berhing <kernel@esmil.dk>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <atish.patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 21, 2020 at 6:45 AM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Fri, Jul 17, 2020 at 12:52 AM Anup Patel <anup.patel@wdc.com> wrote:
> >
> > We add DT bindings documentation for CLINT device.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > Tested-by: Emil Renner Berhing <kernel@esmil.dk>
> > ---
> >  .../bindings/timer/sifive,clint.yaml          | 58 +++++++++++++++++++
> >  1 file changed, 58 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/timer/sifive,clint.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > new file mode 100644
> > index 000000000000..8ad115611860
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > @@ -0,0 +1,58 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/timer/sifive,clint.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: SiFive Core Local Interruptor
> > +
> > +maintainers:
> > +  - Palmer Dabbelt <palmer@dabbelt.com>
> > +  - Anup Patel <anup.patel@wdc.com>
> > +
> > +description:
> > +  SiFive (and other RISC-V) SOCs include an implementation of the SiFive
> > +  Core Local Interruptor (CLINT) for M-mode timer and M-mode inter-processor
> > +  interrupts. It directly connects to the timer and inter-processor interrupt
> > +  lines of various HARTs (or CPUs) so RISC-V per-HART (or per-CPU) local
> > +  interrupt controller is the parent interrupt controller for CLINT device.
> > +  The clock frequency of CLINT is specified via "timebase-frequency" DT
> > +  property of "/cpus" DT node. The "timebase-frequency" DT property is
> > +  described in Documentation/devicetree/bindings/riscv/cpus.yaml
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: sifive,clint0
> > +      - const: sifive,fu540-c000-clint
> > +
> > +    description:
> > +      Should be "sifive,<chip>-clint" and "sifive,clint<version>".
> > +      Supported compatible strings are -
> > +      "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
> > +      onto the SiFive FU540 chip, and "sifive,clint0" for the SiFive
> > +      CLINT v0 IP block with no chip integration tweaks.
> > +      Please refer to sifive-blocks-ip-versioning.txt for details
> > +
>
> As the DT binding suggests that the clint device should be named as "sifive,**",
> I think we should change the DT property in kendryte dts as well.

Okay, I will do it as a separate patch.

>
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts-extended:
> > +    minItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts-extended
> > +
> > +examples:
> > +  - |
> > +    clint@2000000 {
> > +      compatible = "sifive,clint0", "sifive,fu540-c000-clint";
> > +      interrupts-extended = <&cpu1intc 3 &cpu1intc 7
> > +                             &cpu2intc 3 &cpu2intc 7
> > +                             &cpu3intc 3 &cpu3intc 7
> > +                             &cpu4intc 3 &cpu4intc 7>;
> > +       reg = <0x2000000 0x4000000>;
> > +    };
> > +...
> > --
> > 2.25.1
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> Otherwise,
>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
>
> --
> Regards,
> Atish

Regards,
Anup
