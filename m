Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D445BF776
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:18:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbiIUHSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbiIUHSd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:18:33 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81F945EDEA
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:18:32 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-127d10b4f19so7781974fac.9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=sSbcb2VdV5UdqGpIzG4tkzZkXRTZ5sXj2Y/1FwX61Fo=;
        b=q5d8RKmG0d49BmQ9YhGWwlyDiERTJO+cSMTx6lyPW7DLGr2+ZVUHQgZkOYREZPSKw5
         bDJA5GIP7pKxEWuM8HU/3eWaYTX7eN6O4W34q5a6mvIDeEmoMG/OAIc2xIoo0wCec9k9
         GBYsQve+Oq4MLrubWP2qV3iHHJ6HtUnfNe+tX9JrhhdbC515922DspWuz/gf9Tek8XdP
         Krfszy6GcGeCeuAq9BYBod4QyEQkibcaQqOEDC9HEVbZAG3NXGm+TVk8TLRDHk12kuYt
         QdhE2pss/1Nc68owPkvSR4iRXHfwUmJbgyRlGzVIvxabRVWC498ENjylONqKZXVzr/Tm
         uClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=sSbcb2VdV5UdqGpIzG4tkzZkXRTZ5sXj2Y/1FwX61Fo=;
        b=pAP7BFpXcdmLbvKuw+erC83P6BobJd9awQxqugcUTqDe9J9Q+/qxuK34fxUpFexPKV
         8jw+i+WttqI0odAtsxLOw4HjRf4W7FdM/SOtnAuGxQqlus4OjsDHLPGbhHQIFnFMAFZX
         J7XX2OXHuExl1B6As+N2pUB7zZhDUG1FY2Fnk1cAgYveEircX1suGl0yer8pKrgXKqY3
         VL+/MOrWoEAZVgmfsr/m1HbKZwBi0f8+GwkDR+/9uDaVVSoMpXP8pIZewaR+P8HNwIH2
         jw2t01hTchrXAmbJw0p1GxRkYoEzonrgDbumYKfTA/BnnE/E/O6iD2rPPj+mgxroAmAD
         qkNQ==
X-Gm-Message-State: ACrzQf0KHLRUa5+xCdyEwWj80xh3S0QUR3HtskgCle1ETEKqXnbB+glM
        NHsb34Ck74MwkxGKiQ1txfF806DUO8oA7KEDe/4=
X-Google-Smtp-Source: AMsMyM6aUI5ktqLejDUSZoKwjhtk7PGDZe4Ye9HjEOGtOntBHpmKi2Z50oqPE7zbdfdJxYkHJzPv5YkpE09J3PNrSNs=
X-Received: by 2002:a05:6870:c0c8:b0:101:b3c3:abc3 with SMTP id
 e8-20020a056870c0c800b00101b3c3abc3mr4212899oad.144.1663744711841; Wed, 21
 Sep 2022 00:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org> <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org> <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
 <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org> <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
 <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org>
In-Reply-To: <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 09:18:20 +0200
Message-ID: <CAMhs-H-TATfafSJzqXFi-Q=AYYWj-EY1tJs-9y7phR-wu4n1Tg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS architecture
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

Hi Krzysztof,

On Wed, Sep 21, 2022 at 8:42 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/09/2022 07:51, Sergio Paracuellos wrote:
> > Hi Krzysztof,
> >
> > On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 19/09/2022 15:41, Sergio Paracuellos wrote:
> >>> Hi Krzysztof,
> >>>
> >>> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
> >>>>>>
> >>>>>> else mips-hpt-frequency: false
> >>>>>>
> >>>>>>> +
> >>>>>>> +required:
> >>>>>>> +  - compatible
> >>>>>>> +
> >>>>>>> +additionalProperties: true
> >>>>>>
> >>>>>> and this is why you did not notice errors...
> >>>>>
> >>>>> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
> >>>>> so I set additionalProperties to true and only make required for
> >>>>> 'compatible'. What should be the correct approach?
> >>>>
> >>>> This is okay, but it caused you did not notice errors...
> >>>>
> >>>>>
> >>>>>>
> >>>>>>> +
> >>>>>>> +examples:
> >>>>>>> +  - |
> >>>>>>> +    cpus {
> >>>>>>> +      #size-cells = <0>;
> >>>>>>> +      #address-cells = <1>;
> >>>>>>> +
> >>>>>>> +      cpu@0 {
> >>>>>>> +        device_type = "cpu";
> >>>>>>> +        compatible = "mips,mips1004Kc";
> >>>>>>> +        reg = <0>;
> >>>>>>> +      };
> >>>>>>> +
> >>>>>>> +      cpu@1 {
> >>>>>>> +        device_type = "cpu";
> >>>>>>> +        compatible = "mips,mips1004Kc";
> >>>>>>> +        reg = <1>;
> >>>>>>> +      };
> >>>>>>> +    };
> >>>>>>> +
> >>>>>>> +  - |
> >>>>>>> +    // Example 2 (BMIPS CPU)
> >>>>>>> +    cpus {
> >>>>>>> +      #address-cells = <1>;
> >>>>>>> +      #size-cells = <0>;
> >>>>>>> +
> >>>>>>> +      mips-hpt-frequency = <150000000>;
> >>>>>>
> >>>>>> Does not match your bindings. Are you sure you tested the patches?
> >>>>>
> >>>>> Yes I did:
> >>>>>
> >>>>> $ make dt_binding_check
> >>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
> >>>>>   LINT    Documentation/devicetree/bindings
> >>>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> >>>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >>>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
> >>>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>>>>
> >>>>> Can you please point me to a sample of how to make required in a
> >>>>> parent node of cpu@X property 'mips-hpt-frequency' only for some
> >>>>> compatible strings inside the node? What can this be properly
> >>>>> expressed using schema??
> >>>>> I was looking and testing different things for a while without success at all.
> >>>>
> >>>> You either define new schema for /cpus node (and match by name, define
> >>>> children etc) or include it in schema for top-level properties. The
> >>>> first is tricky, because the cpus node does not have compatible (like
> >>>> nvidia,tegra194-ccplex.yaml).
> >
> > Ok so if I am understanding correctly having two schemas is a way to go:
> >
> > One for brcm,bmips-cpus.yaml (since there is no compatible, should
> > this be a valid name for this?) containing something like:
> >
> > properties:
> >   $nodename:
> >      const: cpus
> >
> >      mips-hpt-frequency:
> >         $ref: /schemas/types.yaml#/definitions/uint32
> >         description: |
> >            This is common to all CPUs in the system so it lives
> >             under the "cpus" node.
> >
> > additionalProperties: true
>
> Almost. Such schema will allow mips-hpt-frequency in each cpus node,
> everywhere. On every board and architecture.

Yes, that is what I thought since no compatible to match this is
included in current node.

>
> You need to limit it per top-level compatibles.

Any sample of how to do this? So this bmips SoCs use compatible
strings that are described in:
https://elixir.bootlin.com/linux/v6.0-rc5/source/Documentation/devicetree/bindings/mips/brcm/soc.txt

Can the top level compatible string be used in some way to filter this
easily from this new 'brcm,bmips-cpus.yaml'

>
> You can also wait a week and maybe Rob will have some ideas.

Ideas are always welcome :). Ok, we can wait to Rob and see what
should be the correct approach to handle this.

Thanks,
    Sergio Paracuellos
>
> >
> > examples:
> >   - |
> >      cpus {
> >        #address-cells = <1>;
> >        #size-cells = <0>;
> >
> >         mips-hpt-frequency = <150000000>;
> >
> >         cpu@0 {
> >           compatible = "brcm,bmips4350";
> >           device_type = "cpu";
> >            reg = <0>;
> >         };
> >
> >          cpu@1 {
> >            compatible = "brcm,bmips4350";
> >            device_type = "cpu";
> >            reg = <1>;
> >         };
> >   };
> >
> > And the other as 'cpus.yaml' having:
>
> Yes.
>
> Best regards,
> Krzysztof
