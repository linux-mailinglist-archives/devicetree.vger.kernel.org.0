Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9B4D5BDC94
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 07:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbiITFv0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 01:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbiITFvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 01:51:24 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A34B3DF2D
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:51:23 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id v130so2438576oie.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=sihBDTouZ0SkGcpm3HB0uDC8kJivPfs3NAAcupxho3M=;
        b=C8UIBKgvfjREqbLn7s0mkeUT7uz4u+2I75vXJDGGDeqwuMOXvMG945R/8lAG/0UHwa
         M5Y4HsZlzI4n/CY/f71iUJ27euzPVjWaXIBdHFrNh04TFZX3FdtybEfIOF1QTxaBAUQ5
         Ir0UHrRQHcGGin3dDipg02UB1p/IScOUdwTdHlXAGKF0rjMt+85nXxV5IjsxlS3NlYRk
         dMQr0qVbpYtzO4AbG8rVhgGSfy1HqprepKcZxJpQzL8gQVZitd4jFzVMr5Tm6KU//T5U
         uo+kLUGl9vbFmMgNFnc2Np1UNR6yN8usTr6kITbVVXd5glCiCpAqd3TXRsG0o2j7czJP
         d4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=sihBDTouZ0SkGcpm3HB0uDC8kJivPfs3NAAcupxho3M=;
        b=xyYvsS4qYuv5g2/scP7xTQFJQjxLcwAONdRQPii1QqKuUl4F3ijQMVwScYcSEhTbjM
         N8sVtCNXEqCU1OQ4OpFr5ay7cbgEa05lJbvIPYgb8CjLaH3o93KwJgfZtUYVYeWa/yI6
         UJA4lGUBCT9sf1Qh8O/iT4MzXwBUx6mbuulnOiLK/b0Ss+QsfTKNSa7rA4ywonfxx8De
         EbR9Anodq+F8bgZcwkP1j/ppO567rF+0swZKD1RGhXedKW1DwKGc8MvaTr3MGKb2GUUz
         LR5hRBdzw99KyTk6yioVV+zdV1tQ/TkZlh1RiPxhUwt4gNb6RK6zAEAJUi67P3xp06ez
         em2g==
X-Gm-Message-State: ACrzQf3YxmFnnkY//FkWGhx9sNalrQCl4Btj6ePu5EWdik6cYn4+/7Fd
        +goAQMBm1Q5dC9G+wNiOYKca+c1NLe3ndz75UPU=
X-Google-Smtp-Source: AMsMyM6BDLjBykEIoIA2M/93xF1Vi/E9Ic27QtElRThfhk1lfXW6xU1I4dVLWR3/ffPfKnms8XAg8A6O+rXRkFni7Pw=
X-Received: by 2002:a05:6808:181e:b0:350:7776:9059 with SMTP id
 bh30-20020a056808181e00b0035077769059mr813884oib.83.1663653081956; Mon, 19
 Sep 2022 22:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org> <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org> <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
 <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org>
In-Reply-To: <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Tue, 20 Sep 2022 07:51:09 +0200
Message-ID: <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
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

On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/09/2022 15:41, Sergio Paracuellos wrote:
> > Hi Krzysztof,
> >
> > On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 19/09/2022 14:29, Sergio Paracuellos wrote:
> >>>>
> >>>> else mips-hpt-frequency: false
> >>>>
> >>>>> +
> >>>>> +required:
> >>>>> +  - compatible
> >>>>> +
> >>>>> +additionalProperties: true
> >>>>
> >>>> and this is why you did not notice errors...
> >>>
> >>> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
> >>> so I set additionalProperties to true and only make required for
> >>> 'compatible'. What should be the correct approach?
> >>
> >> This is okay, but it caused you did not notice errors...
> >>
> >>>
> >>>>
> >>>>> +
> >>>>> +examples:
> >>>>> +  - |
> >>>>> +    cpus {
> >>>>> +      #size-cells = <0>;
> >>>>> +      #address-cells = <1>;
> >>>>> +
> >>>>> +      cpu@0 {
> >>>>> +        device_type = "cpu";
> >>>>> +        compatible = "mips,mips1004Kc";
> >>>>> +        reg = <0>;
> >>>>> +      };
> >>>>> +
> >>>>> +      cpu@1 {
> >>>>> +        device_type = "cpu";
> >>>>> +        compatible = "mips,mips1004Kc";
> >>>>> +        reg = <1>;
> >>>>> +      };
> >>>>> +    };
> >>>>> +
> >>>>> +  - |
> >>>>> +    // Example 2 (BMIPS CPU)
> >>>>> +    cpus {
> >>>>> +      #address-cells = <1>;
> >>>>> +      #size-cells = <0>;
> >>>>> +
> >>>>> +      mips-hpt-frequency = <150000000>;
> >>>>
> >>>> Does not match your bindings. Are you sure you tested the patches?
> >>>
> >>> Yes I did:
> >>>
> >>> $ make dt_binding_check
> >>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
> >>>   LINT    Documentation/devicetree/bindings
> >>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> >>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
> >>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
> >>>
> >>> Can you please point me to a sample of how to make required in a
> >>> parent node of cpu@X property 'mips-hpt-frequency' only for some
> >>> compatible strings inside the node? What can this be properly
> >>> expressed using schema??
> >>> I was looking and testing different things for a while without success at all.
> >>
> >> You either define new schema for /cpus node (and match by name, define
> >> children etc) or include it in schema for top-level properties. The
> >> first is tricky, because the cpus node does not have compatible (like
> >> nvidia,tegra194-ccplex.yaml).

Ok so if I am understanding correctly having two schemas is a way to go:

One for brcm,bmips-cpus.yaml (since there is no compatible, should
this be a valid name for this?) containing something like:

properties:
  $nodename:
     const: cpus

     mips-hpt-frequency:
        $ref: /schemas/types.yaml#/definitions/uint32
        description: |
           This is common to all CPUs in the system so it lives
            under the "cpus" node.

additionalProperties: true

examples:
  - |
     cpus {
       #address-cells = <1>;
       #size-cells = <0>;

        mips-hpt-frequency = <150000000>;

        cpu@0 {
          compatible = "brcm,bmips4350";
          device_type = "cpu";
           reg = <0>;
        };

         cpu@1 {
           compatible = "brcm,bmips4350";
           device_type = "cpu";
           reg = <1>;
        };
  };

And the other as 'cpus.yaml' having:

properties:
 compatible:
    enum:
      - brcm,bmips3300
      - brcm,bmips4350
      - brcm,bmips4380
      - brcm,bmips5000
      - brcm,bmips5200
      - ingenic,xburst-mxu1.0
      - ingenic,xburst-fpu1.0-mxu1.1
      - ingenic,xburst-fpu2.0-mxu2.0
      - loongson,gs264
      - mips,m14Kc
      - mips,mips4Kc
      - mips,mips4KEc
      - mips,mips24Kc
      - mips,mips24KEc
      - mips,mips74Kc
      - mips,mips1004Kc
      - mti,interaptiv
      - mti,mips24KEc
      - mti,mips14KEc
      - mti,mips14Kc

  reg:
    maxItems: 1

required:
  - compatible

additionalProperties: true

examples:
  - |
    cpus {
      #size-cells = <0>;
      #address-cells = <1>;

      cpu@0 {
        device_type = "cpu";
        compatible = "mips,mips1004Kc";
        reg = <0>;
      };

      cpu@1 {
        device_type = "cpu";
        compatible = "mips,mips1004Kc";
        reg = <1>;
      };
    };

Should this be a valid approach?

Thanks,
    Sergio Paracuellos

> >>
> >> The second should work, but then it's a bit cluttered (top-level mixed
> >> with cpus).
> >
> > I don't know if I am understanding you but maybe it is because my
> > explanation about the requirement was not good at all. So let me
> > explain a bit better.
> >
> > This is the normal way of definition of cpus for BMIPS:
>
> I know, I checked the DTS.
>
> >
> > cpus {
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       mips-hpt-frequency = <150000000>;
> >
> >       cpu@0 {
> >         compatible = "brcm,bmips4350";
> >         device_type = "cpu";
> >         reg = <0>;
> >       };
> >
> >       cpu@1 {
> >         compatible = "brcm,bmips4350";
> >         device_type = "cpu";
> >         reg = <1>;
> >       };
> >     };
> >
> > What I need to say in schema is that 'mips-hpt-frequency' must be only
> > present if cpu@0 and cpu@1 nodes contain a compatible matching
> > brcm,bmips*. In the same cpu@0 or cpu@1 node
> > the following below will be sufficient. How can I express the same but
> > referring that 'mips-hpt-frequency' must be on the parent node?
>
> As I said you had two ways. In your current patch, I think you cannot.
>
> > Because as it is below the validator complains because
> > 'mips-hpt-frequency'
> > is not present in cpu@0 and cpu@1 nodes:
> >
> > allOf:
> >    - if:
> >         properties:
> >            compatible:
> >                enum:
> >                    - brcm,bmips3300
> >                    - brcm,bmips4350
> >                    - brcm,bmips4380
> >                    - brcm,bmips5000
> >                    - brcm,bmips5200
> >      then:
> >         required:
> >            - mips-hpt-frequency
> >      else:
> >         properties:
> >            mips-hpt-frequency: false
> >
>
> Best regards,
> Krzysztof
