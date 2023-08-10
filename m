Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D57C577721C
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 10:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbjHJII2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 04:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbjHJII1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 04:08:27 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A087410EC
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:08:26 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-56cc3453e31so531950eaf.1
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1691654906; x=1692259706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLY210Kab3wHYGlwkva154Tqo0e4i30Sdd19r9FpPJQ=;
        b=Be1TF7wC/pZUbIAV+kyZaVrSO1fWFqwF/8XrQPqmptjAgdYe+8K41nD3u3u7gQeaGg
         F6yFS2h9wPLhL/gZXx0J+ZcQ4ItuIrPEDpSm2h5YJc0K2iJwm1Rrj2yJPvX0JNv4Z0ax
         eM7eEUXpHVl15T3GdreitLyNnhlEkgtGMKuUoMkaZwrETX/rel8rFbWc6J25waAM7OUr
         fTOg03YVUs9QIZv+CuWUGlETXtmmm79MezpsYcrojUXIfjXHycRMSy93TK1HRZqgWKhn
         /Fu3r4+L+QN6XieSuwhc+79T3bl1E50HXIhDvsqtuRiFg/lD3ii7sW5huIRiIJzQld9y
         vYrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691654906; x=1692259706;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qLY210Kab3wHYGlwkva154Tqo0e4i30Sdd19r9FpPJQ=;
        b=aep7WbD4L9Utkjf72YmPvOQTOkLYkPp8DTql+3hWwYbLWihNVajT+qWkpCi3qveegj
         3qp4go9YXth7PQMnYIu/9CM45j0TpMo8LYQEoZD8SFqQPhLOgNa4Pcxt4V4O9NQ72oXj
         iGHIUJ3nZ2srEJO9T1SyITrubwMKmND499qMsyUJM6EQf2hJY0jlrceYR1uZWgBbuQgX
         p9SwNPX6dMPmTgKKDy1GC7p9hiOiRsMFUmG7fYSKnb+B7NSzsXlmnKwMCKfa20u0QM/Q
         syzWqXn5FipeXzwB/BPoCxwjONHa13bh33Q7kreoIU8Vx9SL75uxHpvkbkU5sYhQ4F1E
         hSgg==
X-Gm-Message-State: AOJu0Ywlj4snOw48WRedmQbu9uVwfPQ+TISDDMn2jJxusAk70C3ZVq9+
        JUNOXumeh3STl0f6wFx6HTTvckFjOind0hQo/D1Qrw==
X-Google-Smtp-Source: AGHT+IHu/clXx9gLA6XOvER/4BOuqBPtZ1uSjKFDhS6lW9WjVzfgvOFtpIoE/LpBCBAqsdgIoxmeuwP8Q36ljUBAExk=
X-Received: by 2002:a05:6808:130e:b0:3a7:b5ea:f5e5 with SMTP id
 y14-20020a056808130e00b003a7b5eaf5e5mr2396031oiv.10.1691654905318; Thu, 10
 Aug 2023 01:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230802150018.327079-1-apatel@ventanamicro.com>
 <20230802150018.327079-12-apatel@ventanamicro.com> <CABvJ_xi5r-NL=22tJWfyQQSti4XgUwsx94B8mQ3LJU29kiQC8w@mail.gmail.com>
In-Reply-To: <CABvJ_xi5r-NL=22tJWfyQQSti4XgUwsx94B8mQ3LJU29kiQC8w@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Thu, 10 Aug 2023 13:38:12 +0530
Message-ID: <CAK9=C2UPfwJ+JccE+7zTcrqdOZ8np0UkL6P8n-Zofbj5NZ=WXQ@mail.gmail.com>
Subject: Re: [PATCH v7 11/15] dt-bindings: interrupt-controller: Add RISC-V
 advanced PLIC
To:     Vincent Chen <vincent.chen@sifive.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Atish Patra <atishp@atishpatra.org>,
        linux-riscv@lists.infradead.org,
        Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 10, 2023 at 1:31=E2=80=AFPM Vincent Chen <vincent.chen@sifive.c=
om> wrote:
>
>
>
> On Wed, Aug 2, 2023 at 11:02=E2=80=AFPM Anup Patel <apatel@ventanamicro.c=
om> wrote:
>>
>> We add DT bindings document for RISC-V advanced platform level interrupt
>> controller (APLIC) defined by the RISC-V advanced interrupt architecture
>> (AIA) specification.
>>
>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  .../interrupt-controller/riscv,aplic.yaml     | 172 ++++++++++++++++++
>>  1 file changed, 172 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controll=
er/riscv,aplic.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/risc=
v,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv=
,aplic.yaml
>> new file mode 100644
>> index 000000000000..190a6499c932
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic=
.yaml
>> @@ -0,0 +1,172 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/interrupt-controller/riscv,aplic.yam=
l#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: RISC-V Advanced Platform Level Interrupt Controller (APLIC)
>> +
>> +maintainers:
>> +  - Anup Patel <anup@brainfault.org>
>> +
>> +description:
>> +  The RISC-V advanced interrupt architecture (AIA) defines an advanced
>> +  platform level interrupt controller (APLIC) for handling wired interr=
upts
>> +  in a RISC-V platform. The RISC-V AIA specification can be found at
>> +  https://github.com/riscv/riscv-aia.
>> +
>> +  The RISC-V APLIC is implemented as hierarchical APLIC domains where a=
ll
>> +  interrupt sources connect to the root APLIC domain and a parent APLIC
>> +  domain can delegate interrupt sources to it's child APLIC domains. Th=
ere
>> +  is one device tree node for each APLIC domain.
>> +
>> +allOf:
>> +  - $ref: /schemas/interrupt-controller.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - qemu,aplic
>> +      - const: riscv,aplic
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupt-controller: true
>> +
>> +  "#interrupt-cells":
>> +    const: 2
>> +
>> +  interrupts-extended:
>> +    minItems: 1
>> +    maxItems: 16384
>> +    description:
>> +      Given APLIC domain directly injects external interrupts to a set =
of
>> +      RISC-V HARTS (or CPUs). Each node pointed to should be a riscv,cp=
u-intc
>> +      node, which has a CPU node (i.e. RISC-V HART) as parent.
>> +
>> +  msi-parent:
>> +    description:
>> +      Given APLIC domain forwards wired interrupts as MSIs to a AIA inc=
oming
>> +      message signaled interrupt controller (IMSIC). If both "msi-paren=
t" and
>> +      "interrupts-extended" properties are present then it means the AP=
LIC
>> +      domain supports both MSI mode and Direct mode in HW. In this case=
, the
>> +      APLIC driver has to choose between MSI mode or Direct mode.
>> +
>> +  riscv,num-sources:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    minimum: 1
>> +    maximum: 1023
>> +    description:
>> +      Specifies the number of wired interrupt sources supported by this
>> +      APLIC domain.
>> +
>> +  riscv,children:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    minItems: 1
>> +    maxItems: 1024
>> +    items:
>> +      maxItems: 1
>> +    description:
>> +      A list of child APLIC domains for the given APLIC domain. Each ch=
ild
>> +      APLIC domain is assigned a child index in increasing order, with =
the
>> +      first child APLIC domain assigned child index 0. The APLIC domain=
 child
>> +      index is used by firmware to delegate interrupts from the given A=
PLIC
>> +      domain to a particular child APLIC domain.
>> +
>> +  riscv,delegation:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    minItems: 1
>> +    maxItems: 1024
>> +    items:
>> +      items:
>> +        - description: child APLIC domain phandle
>> +        - description: first interrupt number of the parent APLIC domai=
n (inclusive)
>> +        - description: last interrupt number of the parent APLIC domain=
 (inclusive)
>> +    description:
>> +      A interrupt delegation list where each entry is a triple consisti=
ng
>> +      of child APLIC domain phandle, first interrupt number of the pare=
nt
>> +      APLIC domain, and last interrupt number of the parent APLIC domai=
n.
>> +      Firmware must configure interrupt delegation registers based on
>> +      interrupt delegation list.
>> +
>> +dependencies:
>> +  riscv,delegation: [ "riscv,children" ]
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupt-controller
>> +  - "#interrupt-cells"
>> +  - riscv,num-sources
>> +
>> +anyOf:
>> +  - required:
>> +      - interrupts-extended
>> +  - required:
>> +      - msi-parent
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    // Example 1 (APLIC domains directly injecting interrupt to HARTs):
>> +
>> +    interrupt-controller@c000000 {
>> +      compatible =3D "qemu,aplic", "riscv,aplic";
>> +      interrupts-extended =3D <&cpu1_intc 11>,
>> +                            <&cpu2_intc 11>,
>> +                            <&cpu3_intc 11>,
>> +                            <&cpu4_intc 11>;
>> +      reg =3D <0xc000000 0x4080>;
>> +      interrupt-controller;
>> +      #interrupt-cells =3D <2>;
>> +      riscv,num-sources =3D <63>;
>> +      riscv,children =3D <&aplic1>, <&aplic2>;
>> +      riscv,delegation =3D <&aplic1 1 63>;
>> +    };
>> +
>> +    aplic1: interrupt-controller@d000000 {
>> +      compatible =3D "qemu,aplic", "riscv,aplic";
>> +      interrupts-extended =3D <&cpu1_intc 9>,
>> +                            <&cpu2_intc 9>;
>> +      reg =3D <0xd000000 0x4080>;
>> +      interrupt-controller;
>> +      #interrupt-cells =3D <2>;
>> +      riscv,num-sources =3D <63>;
>> +    };
>> +
>> +    aplic2: interrupt-controller@e000000 {
>> +      compatible =3D "qemu,aplic", "riscv,aplic";
>> +      interrupts-extended =3D <&cpu3_intc 9>,
>> +                            <&cpu4_intc 9>;
>> +      reg =3D <0xe000000 0x4080>;
>> +      interrupt-controller;
>> +      #interrupt-cells =3D <2>;
>> +      riscv,num-sources =3D <63>;
>> +    };
>> +
>
>
> Hi Anup,
> I have some thoughts regarding the APLIC DTS node. While I understand tha=
t it might be a bit late to discuss this matter within the v7 patch (sorry =
for this), I hope you could still consider the following idea.
>
> For example 1, my understanding is that each APLIC DTS node represents an=
 interrupt domain. IIUC, in physical, these tree Interrupt domains should b=
elong to an APLIC device so the M-mode IRQ domain can delegate interrupts t=
o the child domain. Given this perspective, wrapping all interrupt domain D=
TS nodes with another DTS node seems to present the real scene more clearly=
. Maybe we can add "simple-bus" to the compatible property of this wrapped =
DTS node, so it still can be compatible with your driver implementations. T=
herefore, example 1 may become the following.
>
> interrupt-controller {
>         compatible =3D "riscv,aplics", "simple-bus";
>         ranges;
>         aplic0: interrupt-domain@c000000 {
>                 compatible =3D "qemu,aplic", "riscv,aplic";
>                 interrupts-extended =3D <&cpu1_intc 11>,
>                                       <&cpu2_intc 11>,
>                                       <&cpu3_intc 11>,
>                                       <&cpu4_intc 11>;
>                 reg =3D <0xc000000 0x4080>;
>                 interrupt-controller;
>                 #interrupt-cells =3D <2>;
>                 riscv,num-sources =3D <63>;
>                 riscv,children =3D <&aplic1>, <&aplic2>;
>                 riscv,delegation =3D <&aplic1 1 63>;
>         };
>
>         aplic1: interrupt-domain@d000000 {
>                 compatible =3D "qemu,aplic", "riscv,aplic";
>                 interrupts-extended =3D <&cpu1_intc 9>,
>                                       <&cpu2_intc 9>;
>                 reg =3D <0xd000000 0x4080>;
>                 interrupt-controller;
>                 #interrupt-cells =3D <2>;
>                 riscv,num-sources =3D <63>;
>         };
>
>         aplic2: interrupt-domain@e000000 {
>                 compatible =3D "qemu,aplic", "riscv,aplic";
>                 interrupts-extended =3D <&cpu3_intc 9>,
>                                       <&cpu4_intc 9>;
>                 reg =3D <0xe000000 0x4080>;
>                 interrupt-controller;
>                 #interrupt-cells =3D <2>;
>                 riscv,num-sources =3D <63>;
>         };
> };
> Is it feasible for you?

This clubbing of APLIC domains and placing them close to each
other is a platform implementation choice. On multi-die or multi-socket
systems the APIC domains can be really far apart on different physical
dies so the clubbing you suggest is not always true.

Regards,
Anup

>
> Thanks,
> Vincent
>
>>
>> +  - |
>> +    // Example 2 (APLIC domains forwarding interrupts as MSIs):
>> +
>> +    interrupt-controller@c000000 {
>> +      compatible =3D "qemu,aplic", "riscv,aplic";
>> +      msi-parent =3D <&imsic_mlevel>;
>> +      reg =3D <0xc000000 0x4000>;
>> +      interrupt-controller;
>> +      #interrupt-cells =3D <2>;
>> +      riscv,num-sources =3D <63>;
>> +      riscv,children =3D <&aplic3>;
>> +      riscv,delegation =3D <&aplic3 1 63>;
>> +    };
>> +
>> +    aplic3: interrupt-controller@d000000 {
>> +      compatible =3D "qemu,aplic", "riscv,aplic";
>> +      msi-parent =3D <&imsic_slevel>;
>> +      reg =3D <0xd000000 0x4000>;
>> +      interrupt-controller;
>> +      #interrupt-cells =3D <2>;
>> +      riscv,num-sources =3D <63>;
>> +    };
>> +...
>> --
>> 2.34.1
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
