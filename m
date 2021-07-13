Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 523743C7E3F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 07:53:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238093AbhGNF4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 01:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238068AbhGNF4D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 01:56:03 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C0CEC0613DD
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 22:53:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id r11so1632714wro.9
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 22:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DSn6XjRg0PbwGAe5aupCxoR3xo9khOKhTSDoJF9mVDo=;
        b=HZuZEdJIq/2aP+l3jVaRtFhJ0IdDwBhEQr9atUchZgm8Ko49uiCJ+X4p9X47Q5QOxu
         yanrKuG1n7NTG+lkCWyamOfeMQiAcBrVaYtq3JMnF96zNhy69vPVblJHoRlI7gHMkQnv
         qPjMgD1NPmq6E5HKa/l8Ci/fXnwnZPpZoeuyZRMPfpc+1bHrUk3hHRGRhALjInqTyn/k
         1epgOnw6/AiX85FBX8PDiDZzWzgZHD1tpzrm+W0avvFWXQH13G9V6yvLuH/40Ix6XkIZ
         S1IQrXPvVm5x9GsURV/Ab1OVjMkEy+HR1qEjoQDfvK1xm15eJZXMnGyv1l7ru6nGGXe8
         3yWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DSn6XjRg0PbwGAe5aupCxoR3xo9khOKhTSDoJF9mVDo=;
        b=ugBrdf943LBIq/sK0TBRPoEJKevPqqqeDYzuNx0+78rJRY1g+pkQ6Sw0qvCF4NP7lN
         VF6FCUv+ExuV3ui1xWcF2VnLG1ZevfrhV/lz+guPxTsAi9wumSivHCfR1V/8GBLKbnlu
         WILRiSdRdbNT9dckeHi3wlyp5ohghToEApCa2DGW5OGSpagWShKkHQRveLesGBWSUm6p
         H2FJV1H/Xc+jf7f4h2lkiJmnwP+4CEVgfNfqyyKSls5tEIPuicsQPQS9/L/mqmGjt98a
         zYC315sUzO6OZ5wXmWg2jaKtoXvtBbQERvY+E7FDdRaiqP08fSnvq7hI5063VcBd6bWU
         Urww==
X-Gm-Message-State: AOAM532uSzS3INp6d/fyRm5BcEkIYoYRj8IlyYzv4iMmZWWXcDDlXbXT
        j3qVCj3DDUXxjzwZgopqd+ZWuv2GY9X1f8AFk0N+0Q==
X-Google-Smtp-Source: ABdhPJyWiPmoDmfNB/69cnZzb1pow0MLb9HlG5u3nWeZ3BQcVWVCVGvjpwbYHlDzicq2az5Z4j+MJxHFcFcVo9tRBT4=
X-Received: by 2002:a5d:464b:: with SMTP id j11mr10707490wrs.356.1626241991022;
 Tue, 13 Jul 2021 22:53:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210618123851.1344518-1-anup.patel@wdc.com> <20210618123851.1344518-7-anup.patel@wdc.com>
 <20210712192207.GA2322460@robh.at.kernel.org>
In-Reply-To: <20210712192207.GA2322460@robh.at.kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Tue, 13 Jul 2021 20:57:43 +0530
Message-ID: <CAAhSdy0=aL+N7fLD4+b0u3j3zj8+xYOFH_WAu3N8wFkJNxFqrg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 06/11] dt-bindings: interrupt-controller: Add
 ACLINT MSWI and SSWI bindings
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
        DTML <devicetree@vger.kernel.org>, Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 13, 2021 at 12:52 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Jun 18, 2021 at 06:08:46PM +0530, Anup Patel wrote:
> > We add DT bindings documentation for the ACLINT MSWI and SSWI
> > devices found on RISC-V SOCs.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Reviewed-by: Bin Meng <bmeng.cn@gmail.com>
> > ---
> >  .../riscv,aclint-swi.yaml                     | 82 +++++++++++++++++++
> >  1 file changed, 82 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,aclint-swi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aclint-swi.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aclint-swi.yaml
> > new file mode 100644
> > index 000000000000..b74025542866
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aclint-swi.yaml
> > @@ -0,0 +1,82 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/riscv,aclint-swi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V ACLINT Software Interrupt Devices
> > +
> > +maintainers:
> > +  - Anup Patel <anup.patel@wdc.com>
> > +
> > +description:
> > +  RISC-V SOCs include an implementation of the M-level software interrupt
> > +  (MSWI) device and the S-level software interrupt (SSWI) device defined
> > +  in the RISC-V Advanced Core Local Interruptor (ACLINT) specification.
> > +
> > +  The ACLINT MSWI and SSWI devices are documented in the RISC-V ACLINT
> > +  specification located at
> > +  https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc.
> > +
> > +  The ACLINT MSWI and SSWI devices directly connect to the M-level and
> > +  S-level software interrupt lines of various HARTs (or CPUs) respectively
> > +  so the RISC-V per-HART (or per-CPU) local interrupt controller is the
> > +  parent interrupt controller for the ACLINT MSWI and SSWI devices.
> > +
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - riscv,aclint-mswi
> > +          - riscv,aclint-sswi
> > +
> > +    description:
> > +      Should be "<vendor>,<chip>-aclint-mswi" and "riscv,aclint-mswi" OR
> > +      "<vendor>,<chip>-aclint-sswi" and "riscv,aclint-sswi".
>
> The schema doesn't match the description.
>
> There's no actual vendor implementation yet? You could do:
>
> items:
>   - {}
>   - const: riscv,aclint-mswi
>
> But then your example will fail.

Is it okay to have optional vendor compatible string ?

Vendors can add their specific compatible string if there is some
special handling required. If there is not special handling required
then the two compatible strings are enough.

>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#interrupt-cells":
> > +    const: 0
> > +
> > +  interrupts-extended:
> > +    minItems: 1
>
> You need maxItems too. I guess this based on number of cores, so just
> pick a 'should be enough' value.

There is a limit on the maximum number of connections between the
device and HARTs or CPUs so this will be the maxItems over here.

I will update this in the next patch revision.

>
> > +
> > +  interrupt-controller: true
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts-extended
> > +  - interrupt-controller
> > +  - "#interrupt-cells"
> > +
> > +examples:
> > +  - |
> > +    // Example 1 (RISC-V MSWI device used by Linux RISC-V NoMMU kernel):
> > +
> > +    interrupt-controller@2000000 {
> > +      compatible = "riscv,aclint-mswi";
> > +      interrupts-extended = <&cpu1intc 3 &cpu2intc 3 &cpu3intc 3 &cpu4intc 3>;
>
> interrupts-extended = <&cpu1intc 3>, <&cpu2intc 3>, <&cpu3intc 3>, <&cpu4intc 3>;

Okay, will update.

>
> > +      reg = <0x2000000 0x4000>;
> > +      interrupt-controller;
> > +      #interrupt-cells = <0>;
> > +    };
> > +
> > +  - |
> > +    // Example 2 (RISC-V SSWI device used by Linux RISC-V MMU kernel):
> > +
> > +    interrupt-controller@2100000 {
> > +      compatible = "riscv,aclint-sswi";
> > +      interrupts-extended = <&cpu1intc 1 &cpu2intc 1 &cpu3intc 1 &cpu4intc 1>;
>
> Same here.

Okay, will update here as well.

>
> > +      reg = <0x2100000 0x4000>;
> > +      interrupt-controller;
> > +      #interrupt-cells = <0>;
> > +    };
> > +...
> > --
> > 2.25.1
> >
> >

Regards,
Anup
