Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 894495BFD08
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 13:40:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbiIULkq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 07:40:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbiIULkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 07:40:45 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66BAB8E45E
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 04:40:44 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1274ec87ad5so8702758fac.0
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 04:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=jDHNRwe7Lcu94zQsRyXhfhtl6jqtop7eQ9RgH6SwZgw=;
        b=mbFglyh1e6LpNHSXR5kXLqDZ+offxYAAVUvxjtL7IcdFtE4BPdg9vZ6f0u/UVEfj6C
         qyqRBKKJy9PMxvEJUh/fRD1c8MzTH5oE1fun4UZPYHl97agyB3ZFPOaBpdkTWLTO+uW6
         HswWtVVHhThCzk1jxkBOq61zk8Rf5vf4t561lxMAypA941FTnBbPBO0c6tHubHuO87eV
         dYihC2dGwm8xNZivFgDXecxJ+kMnyhvcBVpFMwe7+qadXU3c7kXvg3v1hWMD+x9tCHSX
         EQrZmHdHZ0JXuaFIN3B+Y0rgOrwc7XMFjCrz6L6VGbOa/h7mxCtJmcjT82vDWfzd7PSK
         9gGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=jDHNRwe7Lcu94zQsRyXhfhtl6jqtop7eQ9RgH6SwZgw=;
        b=2bzGrh2I6oUQpwCejL0Lvn21+hmfZerXLaCFVBEiqWC7QIAJ7DAIFMra4H+nxdT3c+
         dmRnSTVvEYJlFs+TDleU0v2hyba/VjBtyWl9kQ2vTIJ5wJRGnv651aWzMoywNOw6Id3E
         nI8LA2ozmA/i0Aer5H909ss5ONsbU+HsKt2jiRyUjsXGIIa5qkxqCsSBYApHtD/8+A55
         pUJf811ERHkBx7xSwEQmt2yXmlohKjLMhnowbDvqkDuwaYMN1Ku1gtcziWmNdpJWa+z3
         2iLiU7rh6ALSApf1DDYRWd0UiidelwfSNqcBX9fxEipBI5dcy+Ynv4aFDIrCQfu4CzMc
         G5mQ==
X-Gm-Message-State: ACrzQf3z+zpk4aPLHCdPT6WOOnCPjnI/b5UXTBbQsMMr6EJIZD2ZUH+K
        7cS3KE2bLpqeYRIzLjUqmSy+sxbEw3a2JFqakPY=
X-Google-Smtp-Source: AMsMyM6Nq4LDGeOTZ12SarftVnuoKjBU093B2zsELPHKqXbEOBWuDBb/QEkqblQOCssRa735F3apxqpagCQg0m2MbCQ=
X-Received: by 2002:a05:6870:e615:b0:12d:943e:256a with SMTP id
 q21-20020a056870e61500b0012d943e256amr830345oag.83.1663760443620; Wed, 21 Sep
 2022 04:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org> <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org> <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
 <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org> <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
 <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org> <CAMhs-H-TATfafSJzqXFi-Q=AYYWj-EY1tJs-9y7phR-wu4n1Tg@mail.gmail.com>
 <658248bd-fe6f-04c5-fe41-bd3210d6b52f@linaro.org> <CAMhs-H_43GQuxU0NTPWRsaL199+P2zG+BmNzq0p4iujw42HMEQ@mail.gmail.com>
In-Reply-To: <CAMhs-H_43GQuxU0NTPWRsaL199+P2zG+BmNzq0p4iujw42HMEQ@mail.gmail.com>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 13:40:31 +0200
Message-ID: <CAMhs-H8gnh-gVUeDXVSvBAhw=6u8TiZBf+sHSuxVkSOQ5KON4g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS architecture
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, zajec5@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Sep 21, 2022 at 10:11 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Krzysztof,
>
> [cc: Hauke Mehrtens and Rafa=C5=82 Mi=C5=82ecki as maintainers for
> 'Documentation/devicetree/bindings/mips/brcm/']
>
> On Wed, Sep 21, 2022 at 9:51 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 21/09/2022 09:18, Sergio Paracuellos wrote:
> > > Hi Krzysztof,
> > >
> > > On Wed, Sep 21, 2022 at 8:42 AM Krzysztof Kozlowski
> > > <krzysztof.kozlowski@linaro.org> wrote:
> > >>
> > >> On 20/09/2022 07:51, Sergio Paracuellos wrote:
> > >>> Hi Krzysztof,
> > >>>
> > >>> On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
> > >>> <krzysztof.kozlowski@linaro.org> wrote:
> > >>>>
> > >>>> On 19/09/2022 15:41, Sergio Paracuellos wrote:
> > >>>>> Hi Krzysztof,
> > >>>>>
> > >>>>> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
> > >>>>> <krzysztof.kozlowski@linaro.org> wrote:
> > >>>>>>
> > >>>>>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
> > >>>>>>>>
> > >>>>>>>> else mips-hpt-frequency: false
> > >>>>>>>>
> > >>>>>>>>> +
> > >>>>>>>>> +required:
> > >>>>>>>>> +  - compatible
> > >>>>>>>>> +
> > >>>>>>>>> +additionalProperties: true
> > >>>>>>>>
> > >>>>>>>> and this is why you did not notice errors...
> > >>>>>>>
> > >>>>>>> Current arch/mips/boot/dts folder dts files are a mess for cpu =
nodes,
> > >>>>>>> so I set additionalProperties to true and only make required fo=
r
> > >>>>>>> 'compatible'. What should be the correct approach?
> > >>>>>>
> > >>>>>> This is okay, but it caused you did not notice errors...
> > >>>>>>
> > >>>>>>>
> > >>>>>>>>
> > >>>>>>>>> +
> > >>>>>>>>> +examples:
> > >>>>>>>>> +  - |
> > >>>>>>>>> +    cpus {
> > >>>>>>>>> +      #size-cells =3D <0>;
> > >>>>>>>>> +      #address-cells =3D <1>;
> > >>>>>>>>> +
> > >>>>>>>>> +      cpu@0 {
> > >>>>>>>>> +        device_type =3D "cpu";
> > >>>>>>>>> +        compatible =3D "mips,mips1004Kc";
> > >>>>>>>>> +        reg =3D <0>;
> > >>>>>>>>> +      };
> > >>>>>>>>> +
> > >>>>>>>>> +      cpu@1 {
> > >>>>>>>>> +        device_type =3D "cpu";
> > >>>>>>>>> +        compatible =3D "mips,mips1004Kc";
> > >>>>>>>>> +        reg =3D <1>;
> > >>>>>>>>> +      };
> > >>>>>>>>> +    };
> > >>>>>>>>> +
> > >>>>>>>>> +  - |
> > >>>>>>>>> +    // Example 2 (BMIPS CPU)
> > >>>>>>>>> +    cpus {
> > >>>>>>>>> +      #address-cells =3D <1>;
> > >>>>>>>>> +      #size-cells =3D <0>;
> > >>>>>>>>> +
> > >>>>>>>>> +      mips-hpt-frequency =3D <150000000>;
> > >>>>>>>>
> > >>>>>>>> Does not match your bindings. Are you sure you tested the patc=
hes?
> > >>>>>>>
> > >>>>>>> Yes I did:
> > >>>>>>>
> > >>>>>>> $ make dt_binding_check
> > >>>>>>> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mips/cpus.y=
aml
> > >>>>>>>   LINT    Documentation/devicetree/bindings
> > >>>>>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.js=
on
> > >>>>>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.js=
on
> > >>>>>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.d=
ts
> > >>>>>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.d=
tb
> > >>>>>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.d=
tb
> > >>>>>>>
> > >>>>>>> Can you please point me to a sample of how to make required in =
a
> > >>>>>>> parent node of cpu@X property 'mips-hpt-frequency' only for som=
e
> > >>>>>>> compatible strings inside the node? What can this be properly
> > >>>>>>> expressed using schema??
> > >>>>>>> I was looking and testing different things for a while without =
success at all.
> > >>>>>>
> > >>>>>> You either define new schema for /cpus node (and match by name, =
define
> > >>>>>> children etc) or include it in schema for top-level properties. =
The
> > >>>>>> first is tricky, because the cpus node does not have compatible =
(like
> > >>>>>> nvidia,tegra194-ccplex.yaml).
> > >>>
> > >>> Ok so if I am understanding correctly having two schemas is a way t=
o go:
> > >>>
> > >>> One for brcm,bmips-cpus.yaml (since there is no compatible, should
> > >>> this be a valid name for this?) containing something like:
> > >>>
> > >>> properties:
> > >>>   $nodename:
> > >>>      const: cpus
> > >>>
> > >>>      mips-hpt-frequency:
> > >>>         $ref: /schemas/types.yaml#/definitions/uint32
> > >>>         description: |
> > >>>            This is common to all CPUs in the system so it lives
> > >>>             under the "cpus" node.
> > >>>
> > >>> additionalProperties: true
> > >>
> > >> Almost. Such schema will allow mips-hpt-frequency in each cpus node,
> > >> everywhere. On every board and architecture.
> > >
> > > Yes, that is what I thought since no compatible to match this is
> > > included in current node.
> > >
> > >>
> > >> You need to limit it per top-level compatibles.
> > >
> > > Any sample of how to do this? So this bmips SoCs use compatible
> > > strings that are described in:
> > > https://elixir.bootlin.com/linux/v6.0-rc5/source/Documentation/device=
tree/bindings/mips/brcm/soc.txt
> >
> > Could be something like this:
> > https://lore.kernel.org/all/20220830065744.161163-2-krzysztof.kozlowski=
@linaro.org/
> > which is a part of top-level schema or add a new one. The new one will
> > duplicate the compatibles and parts from that one there, so maybe bette=
r
> > to keep it in top-level?
> >
> > I am not sure, any suggestions are welcome. Also platform/architecture
> > maintainers might have their preference to organize it.
>
> I am also not sure.
>
> >
> > Anyway, you did not Cc the actual platform maintainers (Rafa=C5=82 and =
Hauke).
>
> True, sorry for the inconvenience. Added now to CC list.
>
> >
> > >
> > > Can the top level compatible string be used in some way to filter thi=
s
> > > easily from this new 'brcm,bmips-cpus.yaml'
> >
> > Yes. If schema matches the top level compatible, then in allOf:if:then
> > you can add restriction to disallow it for other variants:
> >
> > For example:
> > https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/=
bindings/example-schema.yaml#L212
> >
> > https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/=
bindings/mfd/google,cros-ec.yaml#L152
>
> Thanks for the clue.
>
> I'll try to do some tests and come back here later :)

How about this?

# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
%YAML 1.2
---
$id: http://devicetree.org/schemas/mips/brcm/brcm,bmips-cpus.yaml#
$schema: http://devicetree.org/meta-schemas/core.yaml#

title: BMIPS CPUs bindings

maintainers:
  - Hauke Mehrtens <hauke@hauke-m.de>
  - Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>

description: |
  The device tree allows to describe the layout of BMIPS CPUs.

properties:
  $nodename:
    const: "/"

  compatible:
    enum:
      - "brcm,bcm3368"
      - "brcm,bcm3384"
      - "brcm,bcm33843"
      - "brcm,bcm3384-viper"
      - "brcm,bcm33843-viper"
      - "brcm,bcm6328"
      - "brcm,bcm6358"
      - "brcm,bcm6362"
      - "brcm,bcm6368"
      - "brcm,bcm63168"
      - "brcm,bcm63268"
      - "brcm,bcm7125"
      - "brcm,bcm7346"
      - "brcm,bcm7358"
      - "brcm,bcm7360"
      - "brcm,bcm7362"
      - "brcm,bcm7420"
      - "brcm,bcm7425"

  cpus:
    type: object
    additionalProperties: true
    properties:
      '#address-cells':
        const: 1

      '#size-cells':
        const: 0

      mips-hpt-frequency:
        description: This is common to all CPUs in the system so it lives
          under the "cpus" node.
        $ref: /schemas/types.yaml#/definitions/uint32

    required:
      - '#address-cells'
      - '#size-cells'

    allOf:
      - if:
          properties:
            compatible:
              contains:
                enum:
                  - "brcm,bcm3368"
                  - "brcm,bcm3384"
                  - "brcm,bcm33843"
                  - "brcm,bcm3384-viper"
                  - "brcm,bcm33843-viper"
                  - "brcm,bcm6328"
                  - "brcm,bcm6358"
                  - "brcm,bcm6362"
                  - "brcm,bcm6368"
                  - "brcm,bcm63168"
                  - "brcm,bcm63268"
                  - "brcm,bcm7125"
                  - "brcm,bcm7346"
                  - "brcm,bcm7358"
                  - "brcm,bcm7360"
                  - "brcm,bcm7362"
                  - "brcm,bcm7420"
                  - "brcm,bcm7425"
        then:
          required:
            - mips-hpt-frequency

additionalProperties: true

examples:
  - |
     / {
         #address-cells =3D <1>;
         #size-cells =3D <1>;
         compatible =3D "brcm,bcm3368";

         cpus {
           #address-cells =3D <1>;
           #size-cells =3D <0>;

           mips-hpt-frequency =3D <150000000>;

           cpu@0 {
             compatible =3D "brcm,bmips4350";
             device_type =3D "cpu";
             reg =3D <0>;
           };

           cpu@1 {
             compatible =3D "brcm,bmips4350";
             device_type =3D "cpu";
             reg =3D <1>;
           };
         };
       };

This seems to work as expected with this node:

 make dt_binding_check
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mips/brcm/brcm,bmips-cp=
us.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dts
  DTC     Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
  CHECK   Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
/home/sergio/GNUBEE-SERGIO-TEST/linux/Documentation/devicetree/bindings/mip=
s/brcm/brcm,bmips-cpus.example.dtb:
/: 'model' is a required property
From schema: /home/sergio/.local/lib/python3.8/site-packages/dtschema/schem=
as/root-node.yaml

If I remove the property from the CPU nodes I get:

make dt_binding_check
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mips/brcm/brcm,bmips-cp=
us.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dts
  DTC     Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
  CHECK   Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
/home/sergio/GNUBEE-SERGIO-TEST/linux/Documentation/devicetree/bindings/mip=
s/brcm/brcm,bmips-cpus.example.dtb:
/: cpus: 'mips-hpt-frequency' is a required property
From schema: /home/sergio/GNUBEE-SERGIO-TEST/linux/Documentation/devicetree=
/bindings/mips/brcm/brcm,bmips-cpus.yaml
/home/sergio/GNUBEE-SERGIO-TEST/linux/Documentation/devicetree/bindings/mip=
s/brcm/brcm,bmips-cpus.example.dtb:
/: 'model' is a required property
From schema: /home/sergio/.local/lib/python3.8/site-packages/dtschema/schem=
as/root-node.yaml

And if I change the top level compatible it does not complain also:

make dt_binding_check
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mips/brcm/brcm,bmips-cp=
us.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dts
  DTC     Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
  CHECK   Documentation/devicetree/bindings/mips/brcm/brcm,bmips-cpus.examp=
le.dtb
/home/sergio/GNUBEE-SERGIO-TEST/linux/Documentation/devicetree/bindings/mip=
s/brcm/brcm,bmips-cpus.example.dtb:
/: 'model' is a required property

However, the root-node schema requires 'model' as property and there
is no model at all in any real DTS file. I don't know if can be added
only in this sample to avoid the check fail.

Thanks,
    Sergio Paracuellos


>
> Thanks,
>     Sergio Paracuellos
> >
> >
> > Best regards,
> > Krzysztof
