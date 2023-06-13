Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F49472DFB1
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 12:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240051AbjFMKhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 06:37:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240675AbjFMKhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 06:37:25 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FDE41A3
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 03:37:23 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-bb2ffa1e235so5497590276.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 03:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686652642; x=1689244642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6v7bAOnlXSpxwVByNrc2wz3YyV0QI4pSQ1WAf4/fwQ=;
        b=XYe7DUHMvGV7y2bk4ogTIjbkVzcgzUmWBbBgPF1keLUauqwTFso2aU41gu9FLKluKu
         E6nipZ8KQrqhbgbP6eMpWe5q3qri0rXk+bWJv7HFMOae77UL2k7/845wYD8x9kH+wNhx
         2ayxk0svBQENhTEER+t6TCNp+pXvad9K+spGe2yTQkmbk6i65MNaoFDRMaipn2r+vOs7
         x4QiwKtfa8Nq7oCB+Ww4EJZ1Q/O9awqHQe7KlpLCHo2YOarsxYOHwh6vY05YXxDT0Bvl
         72eaNF/Qm9LlPOuKgjVC0dQCkvOx2bLPW2eUO86Uha9sWk6PcHEICRBnAqRlVbMJr8TW
         bUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686652642; x=1689244642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u6v7bAOnlXSpxwVByNrc2wz3YyV0QI4pSQ1WAf4/fwQ=;
        b=dDclHzJhQsEHiU3pnXfP2ZL1fk5nz6zZYRfpAqx3PQXG6d3t0yvFKcF27tTLaNGJp+
         rxYB3d6zUKLeqVjX5oVxieMxoD+nZgrispuFF9n7wvwKf66w40+U4KvYGyutP+z6ir05
         TX4O25p+5IiW9M5ILzkWprLYSpOOEna+onrFc5YGE1FI2FPUK1DEmW/hgSlTIiAys2kq
         2y3hT1v0Dz7hlQ4F9pnC7X7/yUGqy3joncRCVBKoeLuCHA2vs3SfsiCv/pg8PdaP16+B
         q2jXRH376S6/zu9ltk7dR172iKAlxlfEyj+83Mz5mJylGpelkLu1PJ3RuAmPO/ojg8m8
         wuvA==
X-Gm-Message-State: AC+VfDx4e+GA9owgbMf3Q+kk7Qx4Qcf9wDjARUW5CwVC8YJqLXX786vk
        lyD+TGSwsGYXw8cGFGVs7MMwYXGh+TisgAab46TeWA==
X-Google-Smtp-Source: ACHHUZ5/Qvp7DqZ5pP3PN3ixTFHH2JNuoNmRb0aB0KXX5cNFjw0dq25o+ZtOjcjIGQZHYqGbkftMsLProALMoOCNzLk=
X-Received: by 2002:a25:b901:0:b0:bc6:9e29:f2c2 with SMTP id
 x1-20020a25b901000000b00bc69e29f2c2mr1018625ybj.44.1686652642636; Tue, 13 Jun
 2023 03:37:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230508142842.854564-1-apatel@ventanamicro.com>
 <20230508142842.854564-9-apatel@ventanamicro.com> <20230510-retry-paced-644f5a95ba3f@spud>
In-Reply-To: <20230510-retry-paced-644f5a95ba3f@spud>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Tue, 13 Jun 2023 16:07:11 +0530
Message-ID: <CAK9=C2W1=DAME7uYKu82qcpfn=V5N=4tZ4NTa2EygR+HDQCsmQ@mail.gmail.com>
Subject: Re: [PATCH v3 08/11] dt-bindings: interrupt-controller: Add RISC-V
 advanced PLIC
To:     Conor Dooley <conor@kernel.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 10, 2023 at 9:11=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> Hey Anup,
>
> On Mon, May 08, 2023 at 07:58:39PM +0530, Anup Patel wrote:
> > +  interrupts-extended:
> > +    minItems: 1
> > +    maxItems: 16384
> > +    description:
> > +      Given APLIC domain directly injects external interrupts to a set=
 of
> > +      RISC-V HARTS (or CPUs). Each node pointed to should be a riscv,c=
pu-intc
> > +      node, which has a riscv node (i.e. RISC-V HART) as parent.
>
> Same nit here, s/riscv node/cpu node/?

Okay, I will update.

>
> > +
> > +  msi-parent:
> > +    description:
> > +      Given APLIC domain forwards wired interrupts as MSIs to a AIA in=
coming
> > +      message signaled interrupt controller (IMSIC). If both "msi-pare=
nt" and
> > +      "interrupts-extended" properties are present then it means the A=
PLIC
> > +      domain supports both MSI mode and Direct mode in HW. In this cas=
e, the
> > +      APLIC driver has to choose between MSI mode or Direct mode.
> > +
> > +  riscv,num-sources:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 1
> > +    maximum: 1023
> > +    description:
> > +      Specifies the number of wired interrupt sources supported by thi=
s
> > +      APLIC domain.
>
> Rob asked:
> | We don't normally need to how many interrupts, why here?
>
> But I do not see an answer to that on lore.

The APLIC spec defines maximum interrupt sources to be 1023.

>
> > +
> > +  riscv,children:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    minItems: 1
> > +    maxItems: 1024
> > +    items:
> > +      maxItems: 1
> > +    description:
> > +      A list of child APLIC domains for the given APLIC domain. Each c=
hild
> > +      APLIC domain is assigned a child index in increasing order, with=
 the
> > +      first child APLIC domain assigned child index 0. The APLIC domai=
n child
> > +      index is used by firmware to delegate interrupts from the given =
APLIC
> > +      domain to a particular child APLIC domain.
> > +
> > +  riscv,delegate:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    minItems: 1
> > +    maxItems: 1024
> > +    items:
> > +      items:
> > +        - description: child APLIC domain phandle
> > +        - description: first interrupt number of this APLIC domain (in=
clusive)
> > +        - description: last interrupt number of this APLIC domain (inc=
lusive)
> > +    description:
> > +      A interrupt delegation list where each entry is a triple consist=
ing of
> > +      child APLIC domain phandle, first interrupt number of this APLIC=
 domain,
> > +      and last interrupt number of this APLIC domain. Firmware must co=
nfigure
> > +      interrupt delegation registers based on interrupt delegation lis=
t.
>
> I read back Rob's comments on this from last time. He said:
> | The node's domain it delegating its interrupts to the child domain or
> | the other way around? The interrupt numbers here are this domain's or
> | the child's?

The node's domain is delegating its interrupts to the child domain.

>
> IMO it's ambiguous from the binding description whether the numbers
> refer to the "first interrupt in the parent domain that is delegated
> to the child" or to numbering of the interrupts within the child domain.
> "This" can be quite an ambiguous word, and it's not totally obvious
> whether the "this" refers to the "child domain" earlier in the sentence.
>
> I also do not not think you have answered his question about the
> directionality of the delegation either (it should just be a copy-paste
> from riscv,children, no?).

For APLIC, the interrupt delegation is always from parent domain
to the child domain.

I will add a statement about this in the description.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupt-controller
> > +  - "#interrupt-cells"
> > +  - riscv,num-sources
>
> btw, do we need something like:
>
> anyOf:
>   - required:
>       - interrupts-extended
>   - required:
>       - msi-parent

Okay, I will update.

>
> & hopefully I didn't previously ask this one:
> dependencies:
>   riscv,delegate: [ riscv,children ]
>
> As an aside, I still think "riscv,delegate" looks strange here alongside
> "riscv,children" since "delegate" is singular and "children" is plural.
> The plural would be "delegates", but "delegation" would also fit better
> than "delegate".

Okay, I will rename it to "riscv,delegation".

>
> Cheers,
> Conor.

Regards,
Anup
