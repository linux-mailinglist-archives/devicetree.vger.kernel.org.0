Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A969F5BF8AA
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:12:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiIUIML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbiIUIMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:12:10 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB7386FFF
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:12:08 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 102-20020a9d0bef000000b0065a08449ab3so3424447oth.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=hGp8d0A0sXUxOY+PK23AqfL6sCZXTwSl99uqBJPSoMs=;
        b=b7sBIW3LgSW+UGWcZq7043R4/Qi/8Y3MjI2QvuB0eIshqcZQCY4ayC1QAWasK3UMc8
         Wkx0S6iBmYxiHRodYC1XQkbygj88g48s0mEECDG/fDirFxmSEYCCvK2Rjbi2WeyUslT+
         8gMYZ3CZ6WKeAzBffxEiZiqmpi5HvAujyvoaCmAaqJlbs62kmDoPzvvxf1uJ7eJ0kisL
         RG9nco93kYSBD7Ul9nDQzwvVLKzPueWlTYpgq1Lrqml7u48b3DPnGI7ieJ4I+KyRLizQ
         txE4/Y/4G4ZeLvj9e8OPuS9J6TNdcvqd8Px7B/APd+FtuNOfHSoclx9q1dv7Mhbhsg4N
         Ijeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=hGp8d0A0sXUxOY+PK23AqfL6sCZXTwSl99uqBJPSoMs=;
        b=N+a9Exxo5NfissykoXmAQmgx3xCSsXbPLL11YfAeLFUzOnUbmpVJILZVfd2LIiPBKf
         G0NLrPTv6Ozll/b0+2xoCY+g4Gw2qtfLY22O7ysLwGoVR+QIscv+sqz8izig+DX5T7Cq
         IGEAsgh+PFoZsrNB77W0cPUZlx5mXVcvocbCv8Hdg4i1ynQMzri9Nc8LC3xsDM/pR3SD
         Wn1T+DswsbQVVWefYVq2WHJuC/6CYJcPF7w5uwqRibsFBnfKpr1OM4f50K/bYCqctqCM
         oGpW3bYoD2n+4VxLzv372QDfHip2vskYFa0EaqooDqhwKoDuY98ZhPk+SNwW3f6Qbb6z
         p+0w==
X-Gm-Message-State: ACrzQf3RWl6LTcdTOpLekKVrjxfDcmqvAOUqPrZmOjDUD7DpRgftUFes
        j/NymnrCNu/G2Bt/cnl6g6DV+GsPacza6O7SGsyvbtQyjc5Mzw==
X-Google-Smtp-Source: AMsMyM7Mt85QtQXwSXJSog5ZF5LZIOd8wRlyOpbed4zfmlIRt5TG0T0s44eujFuxJ+RP19MWTG4+TLtGiKDiA3JBR5k=
X-Received: by 2002:a05:6830:150e:b0:655:bc7d:1e5d with SMTP id
 k14-20020a056830150e00b00655bc7d1e5dmr11814329otp.272.1663747928038; Wed, 21
 Sep 2022 01:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org> <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org> <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
 <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org> <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
 <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org> <CAMhs-H-TATfafSJzqXFi-Q=AYYWj-EY1tJs-9y7phR-wu4n1Tg@mail.gmail.com>
 <658248bd-fe6f-04c5-fe41-bd3210d6b52f@linaro.org>
In-Reply-To: <658248bd-fe6f-04c5-fe41-bd3210d6b52f@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 10:11:56 +0200
Message-ID: <CAMhs-H_43GQuxU0NTPWRsaL199+P2zG+BmNzq0p4iujw42HMEQ@mail.gmail.com>
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

[cc: Hauke Mehrtens and Rafa=C5=82 Mi=C5=82ecki as maintainers for
'Documentation/devicetree/bindings/mips/brcm/']

On Wed, Sep 21, 2022 at 9:51 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/09/2022 09:18, Sergio Paracuellos wrote:
> > Hi Krzysztof,
> >
> > On Wed, Sep 21, 2022 at 8:42 AM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 20/09/2022 07:51, Sergio Paracuellos wrote:
> >>> Hi Krzysztof,
> >>>
> >>> On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 19/09/2022 15:41, Sergio Paracuellos wrote:
> >>>>> Hi Krzysztof,
> >>>>>
> >>>>> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
> >>>>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>>>
> >>>>>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
> >>>>>>>>
> >>>>>>>> else mips-hpt-frequency: false
> >>>>>>>>
> >>>>>>>>> +
> >>>>>>>>> +required:
> >>>>>>>>> +  - compatible
> >>>>>>>>> +
> >>>>>>>>> +additionalProperties: true
> >>>>>>>>
> >>>>>>>> and this is why you did not notice errors...
> >>>>>>>
> >>>>>>> Current arch/mips/boot/dts folder dts files are a mess for cpu no=
des,
> >>>>>>> so I set additionalProperties to true and only make required for
> >>>>>>> 'compatible'. What should be the correct approach?
> >>>>>>
> >>>>>> This is okay, but it caused you did not notice errors...
> >>>>>>
> >>>>>>>
> >>>>>>>>
> >>>>>>>>> +
> >>>>>>>>> +examples:
> >>>>>>>>> +  - |
> >>>>>>>>> +    cpus {
> >>>>>>>>> +      #size-cells =3D <0>;
> >>>>>>>>> +      #address-cells =3D <1>;
> >>>>>>>>> +
> >>>>>>>>> +      cpu@0 {
> >>>>>>>>> +        device_type =3D "cpu";
> >>>>>>>>> +        compatible =3D "mips,mips1004Kc";
> >>>>>>>>> +        reg =3D <0>;
> >>>>>>>>> +      };
> >>>>>>>>> +
> >>>>>>>>> +      cpu@1 {
> >>>>>>>>> +        device_type =3D "cpu";
> >>>>>>>>> +        compatible =3D "mips,mips1004Kc";
> >>>>>>>>> +        reg =3D <1>;
> >>>>>>>>> +      };
> >>>>>>>>> +    };
> >>>>>>>>> +
> >>>>>>>>> +  - |
> >>>>>>>>> +    // Example 2 (BMIPS CPU)
> >>>>>>>>> +    cpus {
> >>>>>>>>> +      #address-cells =3D <1>;
> >>>>>>>>> +      #size-cells =3D <0>;
> >>>>>>>>> +
> >>>>>>>>> +      mips-hpt-frequency =3D <150000000>;
> >>>>>>>>
> >>>>>>>> Does not match your bindings. Are you sure you tested the patche=
s?
> >>>>>>>
> >>>>>>> Yes I did:
> >>>>>>>
> >>>>>>> $ make dt_binding_check
> >>>>>>> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mips/cpus.yam=
l
> >>>>>>>   LINT    Documentation/devicetree/bindings
> >>>>>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> >>>>>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >>>>>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
> >>>>>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>>>>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>>>>>>
> >>>>>>> Can you please point me to a sample of how to make required in a
> >>>>>>> parent node of cpu@X property 'mips-hpt-frequency' only for some
> >>>>>>> compatible strings inside the node? What can this be properly
> >>>>>>> expressed using schema??
> >>>>>>> I was looking and testing different things for a while without su=
ccess at all.
> >>>>>>
> >>>>>> You either define new schema for /cpus node (and match by name, de=
fine
> >>>>>> children etc) or include it in schema for top-level properties. Th=
e
> >>>>>> first is tricky, because the cpus node does not have compatible (l=
ike
> >>>>>> nvidia,tegra194-ccplex.yaml).
> >>>
> >>> Ok so if I am understanding correctly having two schemas is a way to =
go:
> >>>
> >>> One for brcm,bmips-cpus.yaml (since there is no compatible, should
> >>> this be a valid name for this?) containing something like:
> >>>
> >>> properties:
> >>>   $nodename:
> >>>      const: cpus
> >>>
> >>>      mips-hpt-frequency:
> >>>         $ref: /schemas/types.yaml#/definitions/uint32
> >>>         description: |
> >>>            This is common to all CPUs in the system so it lives
> >>>             under the "cpus" node.
> >>>
> >>> additionalProperties: true
> >>
> >> Almost. Such schema will allow mips-hpt-frequency in each cpus node,
> >> everywhere. On every board and architecture.
> >
> > Yes, that is what I thought since no compatible to match this is
> > included in current node.
> >
> >>
> >> You need to limit it per top-level compatibles.
> >
> > Any sample of how to do this? So this bmips SoCs use compatible
> > strings that are described in:
> > https://elixir.bootlin.com/linux/v6.0-rc5/source/Documentation/devicetr=
ee/bindings/mips/brcm/soc.txt
>
> Could be something like this:
> https://lore.kernel.org/all/20220830065744.161163-2-krzysztof.kozlowski@l=
inaro.org/
> which is a part of top-level schema or add a new one. The new one will
> duplicate the compatibles and parts from that one there, so maybe better
> to keep it in top-level?
>
> I am not sure, any suggestions are welcome. Also platform/architecture
> maintainers might have their preference to organize it.

I am also not sure.

>
> Anyway, you did not Cc the actual platform maintainers (Rafa=C5=82 and Ha=
uke).

True, sorry for the inconvenience. Added now to CC list.

>
> >
> > Can the top level compatible string be used in some way to filter this
> > easily from this new 'brcm,bmips-cpus.yaml'
>
> Yes. If schema matches the top level compatible, then in allOf:if:then
> you can add restriction to disallow it for other variants:
>
> For example:
> https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/bi=
ndings/example-schema.yaml#L212
>
> https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/bi=
ndings/mfd/google,cros-ec.yaml#L152

Thanks for the clue.

I'll try to do some tests and come back here later :)

Thanks,
    Sergio Paracuellos
>
>
> Best regards,
> Krzysztof
