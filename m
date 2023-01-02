Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 040F565B48B
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 17:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236443AbjABQA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 11:00:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236475AbjABQAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 11:00:17 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1931DA47F
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 08:00:13 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id qk9so67407758ejc.3
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 08:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QdGO/Cj1/ubTCIoWpQ1S17UZ9pxZ4OvM4+Xa6YgQiKA=;
        b=PzS1VDjsgwqEFFBxDnR4rAJhgt6ILaS1/BVhKMvhwbL/KbZqWLE/l+GqAzUq9z1MSB
         ip+m7PvwO0uPL2HCaEFZkI56EU+PlILA7jM17YwIcS4b1GWyoFDn9xrELjYoh3z9Pz73
         iprMd1cKooSGQ4XnShExYuUrtsix+0IZhz8i+Pd9tipprU3jJ1sZN41AjTsJB/7XYHEn
         mAtldrkozc+3z4EWoRAO0h1OV9IQ4uoobHRgRE7VxMumBnCDw1rW66/P7rRltVZHCuak
         y+RRK4+di0lVdxsuxFACUACFXwa0kskdwOGWjDva0Pqhlt3MJuQ8USFXBTTptK4+BTOX
         3IUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QdGO/Cj1/ubTCIoWpQ1S17UZ9pxZ4OvM4+Xa6YgQiKA=;
        b=CIAtpQWngTzsuu7CRpPnYrk3uu2yR/7wuja7jZ5ynR8W6Kzf9bgnSeit0o6QXRMWLq
         k3Zm12lQ/O7nyW6YJVFYIhMlmGn6kvOmLmuGN5tuHJn01gGSi9tuJOk5Kt0DU1gy9X5z
         5SnutiowqCrj8mgsxE2SHpg2oOF+UYV0zP7/JZn4KhKtuc+RRRV3LQSZz8VTNGyU/zH2
         SIp1muhqdjnJUsEuQJMQHBeC6qANdCcTfTNtHRA3DJmEkDhjXI/eWPTMWUQopYZCAAT0
         rksZevik+lkl9IvO+ayIRGrOwebviJYliJVh/LjaUrqWJR3c5AMedz0+UnkGbBvzxPwS
         ROnQ==
X-Gm-Message-State: AFqh2kowXEoP4yQd+317R7b+dPlutxL3roIXVDRzdtt7jOiXM6a61LzJ
        d4ImXFyGJrwfxxcxoMAxteiwgT1HkiTkaTmfUvgqew==
X-Google-Smtp-Source: AMrXdXs/VZbo17ZwC4OQSrc7NldaTAtNJO2KsXVEHRQyJnMVyMmMgaXn+sI/CGaUaRj3me6hgBfuqsoiNCGsM2hwXFw=
X-Received: by 2002:a17:906:3385:b0:7b2:7af0:c231 with SMTP id
 v5-20020a170906338500b007b27af0c231mr2689886eja.240.1672675211538; Mon, 02
 Jan 2023 08:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20221111044207.1478350-1-apatel@ventanamicro.com>
 <20221111044207.1478350-5-apatel@ventanamicro.com> <9be58cb4-4ee8-a6e0-7a0a-f2f581e394d3@linaro.org>
 <CAK9=C2X55CG6tjjiTPrecnnZZiwTOS1BSH3UTPa-fLBm38WdLA@mail.gmail.com> <20221116191436.GA576695-robh@kernel.org>
In-Reply-To: <20221116191436.GA576695-robh@kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 2 Jan 2023 21:29:59 +0530
Message-ID: <CAAhSdy02xHvwbv53rH+mdp1=0V-i5EgDjEUY0Tr=4nzg8fK3sQ@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: Add RISC-V incoming MSI controller bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Anup Patel <apatel@ventanamicro.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Atish Patra <atishp@atishpatra.org>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 17, 2022 at 12:44 AM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Nov 14, 2022 at 05:36:06PM +0530, Anup Patel wrote:
> > On Mon, Nov 14, 2022 at 3:19 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> > >
> > > On 11/11/2022 05:42, Anup Patel wrote:
> > > > We add DT bindings document for RISC-V incoming MSI controller (IMSIC)
> > > > defined by the RISC-V advanced interrupt architecture (AIA) specification.
> > > >
> > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > > ---
> > > >  .../interrupt-controller/riscv,imsic.yaml     | 174 ++++++++++++++++++
> > > >  1 file changed, 174 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/riscv,imsic.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,imsic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsic.yaml
> > > > new file mode 100644
> > > > index 000000000000..05106eb1955e
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,imsic.yaml
> > > > @@ -0,0 +1,174 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/interrupt-controller/riscv,imsic.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: RISC-V Incoming MSI Controller (IMSIC)
> > > > +
> > > > +maintainers:
> > > > +  - Anup Patel <anup@brainfault.org>
> > > > +
> > > > +description:
> > > > +  The RISC-V advanced interrupt architecture (AIA) defines a per-CPU incoming
> > > > +  MSI controller (IMSIC) for handling MSIs in a RISC-V platform. The RISC-V
> > > > +  AIA specification can be found at https://github.com/riscv/riscv-aia.
> > > > +
> > > > +  The IMSIC is a per-CPU (or per-HART) device with separate interrupt file
> > > > +  for each privilege level (machine or supervisor). The configuration of
> > > > +  a IMSIC interrupt file is done using AIA CSRs and it also has a 4KB MMIO
> > > > +  space to receive MSIs from devices. Each IMSIC interrupt file supports a
> > > > +  fixed number of interrupt identities (to distinguish MSIs from devices)
> > > > +  which is same for given privilege level across CPUs (or HARTs).
> > > > +
> > > > +  The arrangement of IMSIC interrupt files in MMIO space of a RISC-V platform
> > > > +  follows a particular scheme defined by the RISC-V AIA specification. A IMSIC
> > > > +  group is a set of IMSIC interrupt files co-located in MMIO space and we can
> > > > +  have multiple IMSIC groups (i.e. clusters, sockets, chiplets, etc) in a
> > > > +  RISC-V platform. The MSI target address of a IMSIC interrupt file at given
> > > > +  privilege level (machine or supervisor) encodes group index, HART index,
> > > > +  and guest index (shown below).
> > > > +
> > > > +  XLEN-1           >=24                                 12    0
> > > > +  |                  |                                  |     |
> > > > +  -------------------------------------------------------------
> > > > +  |xxxxxx|Group Index|xxxxxxxxxxx|HART Index|Guest Index|  0  |
> > > > +  -------------------------------------------------------------
> > > > +
> > > > +  The device tree of a RISC-V platform will have one IMSIC device tree node
> > > > +  for each privilege level (machine or supervisor) which collectively describe
> > > > +  IMSIC interrupt files at that privilege level across CPUs (or HARTs).
> > > > +
> > > > +allOf:
> > > > +  - $ref: /schemas/interrupt-controller.yaml#
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    items:
> > > > +      - enum:
> > > > +          - vendor,chip-imsics
> > >
> > > There is no such vendor... As Conor pointed out, this does not look
> > > correct. Compatibles must be real and specific.
> >
> > Previously, Rob had suggest to:
> > 1) Mandate two compatible strings: one for implementation and
> >     and second for specification
> > 2) Since this is new specification with QEMU being the only
> >     implementation, we add "vendor,chip-imsics" as dummy
> >     implementation specific string for DT schema checkers
> >     to pass the examples. Once we have an actual implementation,
> >    we will replace this dummy string.
>
> What will QEMU's DT use? That's an implementation we can and do run
> validation on. Your choices are define a QEMU specific compatible string
> or allow the fallback alone. I'm fine either way. With the latter,
> someone has to review that the fallback is not used alone in .dts files
> while doing the former allows the tools to check for you. It also
> encourages making every new difference a property rather than implied by
> compatible, but those should be caught in review.
>
> If you go with the fallback only, just make it clear that it's for QEMU
> or s/w models only.

Sure, I will add  "riscv,qemu-imsics" as QEMU specific compatible string.

Regards,
Anup
