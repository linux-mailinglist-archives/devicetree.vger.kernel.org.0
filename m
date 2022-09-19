Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF2755BCD6A
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 15:41:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbiISNll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 09:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbiISNlk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 09:41:40 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EB6D11C22
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 06:41:39 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-127dca21a7dso61835890fac.12
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 06:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=91pvTaNcNj42HAnDz73qIWnrbTG4IgbL5/BErsir4bk=;
        b=fGPoDDPYmkh+M2Ahgxb1u2EaHulWfN10h+Cws6QR6bc+kYtyjV8g1iOmi4XLwhoeAq
         vGYjDMIfLntXvQnvgs+LYlYB0jN6uqfEhkm5Ct/8kzfvCU7Uial8EtJS0BkYzTBWcv0G
         JVuQmHr9oiAswYnswCOqiWSUDDvIVzduEpMA5XdCIV9pwFx6tYkmeoCcF5ukiK1OAY9k
         +1paaHDes0ruxlCTPxybhh9hU0ZSK+atiewLmknzXE2G/KvZEAxLC3/kTZ5LyJEqfxnV
         TeGFr9vMM9MBbQxjeCgGgS5JyLGDLq9H+mMXbCmlb8dBexoZ3xpc0o1bk2sszSXefY+g
         ojwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=91pvTaNcNj42HAnDz73qIWnrbTG4IgbL5/BErsir4bk=;
        b=Fg9l+X4UO9RNVWmIBiLIbbF8CGN/04R9JR3RdvSL/yGtZLSsgSZo49950JDgoh9npr
         vm/luiwVDT+didioZiWyDAh5tuYsjllUL3C9g8zYHYYH3kxFPqKJpuppmUFxbn0I1h0F
         tJLOnP2aLrYErMVFgb3OVxHJ5dOpQBoA4Ko4/0zTpJPyMIQzTNwXQ1caBp35ZWQGayuM
         Jeo6Xpu52qiRoP+OEYqgfkwy7Y2wsU8vVd77fl1zH8bOyCPGj7hqbBgnDS1zt8q2Q3Xo
         F7YOxqvzz7j+tRb7CYBsxyGa00/DyQQU0KhjxDtaZJ9HJsW75Hfg5wiRVy4WOou4SMbz
         UhRg==
X-Gm-Message-State: ACrzQf18U57oHFPnlTboFbVIcbo0lWFja9nG5ao8WLKIwxJwO8JxPrUZ
        re/Xj51gPoLAeP7PsmOX7YdH+t7Dkz7yYRblNRQOxDEbAwThLw==
X-Google-Smtp-Source: AMsMyM7xR4UMsIrbf8MIu0aFz67k+Ku9BlC8P//9aEPWlubpxI3fxxbGgTFQFqXsqMJH7UYPzQFUuG8AOkRQJ37lsno=
X-Received: by 2002:a05:6870:d18e:b0:12d:3bac:ab21 with SMTP id
 a14-20020a056870d18e00b0012d3bacab21mr628775oac.83.1663594898224; Mon, 19 Sep
 2022 06:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org> <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org>
In-Reply-To: <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 15:41:26 +0200
Message-ID: <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
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

On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 19/09/2022 14:29, Sergio Paracuellos wrote:
> >>
> >> else mips-hpt-frequency: false
> >>
> >>> +
> >>> +required:
> >>> +  - compatible
> >>> +
> >>> +additionalProperties: true
> >>
> >> and this is why you did not notice errors...
> >
> > Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
> > so I set additionalProperties to true and only make required for
> > 'compatible'. What should be the correct approach?
>
> This is okay, but it caused you did not notice errors...
>
> >
> >>
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    cpus {
> >>> +      #size-cells = <0>;
> >>> +      #address-cells = <1>;
> >>> +
> >>> +      cpu@0 {
> >>> +        device_type = "cpu";
> >>> +        compatible = "mips,mips1004Kc";
> >>> +        reg = <0>;
> >>> +      };
> >>> +
> >>> +      cpu@1 {
> >>> +        device_type = "cpu";
> >>> +        compatible = "mips,mips1004Kc";
> >>> +        reg = <1>;
> >>> +      };
> >>> +    };
> >>> +
> >>> +  - |
> >>> +    // Example 2 (BMIPS CPU)
> >>> +    cpus {
> >>> +      #address-cells = <1>;
> >>> +      #size-cells = <0>;
> >>> +
> >>> +      mips-hpt-frequency = <150000000>;
> >>
> >> Does not match your bindings. Are you sure you tested the patches?
> >
> > Yes I did:
> >
> > $ make dt_binding_check
> > DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
> >   LINT    Documentation/devicetree/bindings
> >   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> >   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> >   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
> >   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
> > ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
> >
> > Can you please point me to a sample of how to make required in a
> > parent node of cpu@X property 'mips-hpt-frequency' only for some
> > compatible strings inside the node? What can this be properly
> > expressed using schema??
> > I was looking and testing different things for a while without success at all.
>
> You either define new schema for /cpus node (and match by name, define
> children etc) or include it in schema for top-level properties. The
> first is tricky, because the cpus node does not have compatible (like
> nvidia,tegra194-ccplex.yaml).
>
> The second should work, but then it's a bit cluttered (top-level mixed
> with cpus).

I don't know if I am understanding you but maybe it is because my
explanation about the requirement was not good at all. So let me
explain a bit better.

This is the normal way of definition of cpus for BMIPS:

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

What I need to say in schema is that 'mips-hpt-frequency' must be only
present if cpu@0 and cpu@1 nodes contain a compatible matching
brcm,bmips*. In the same cpu@0 or cpu@1 node
the following below will be sufficient. How can I express the same but
referring that 'mips-hpt-frequency' must be on the parent node?
Because as it is below the validator complains because
'mips-hpt-frequency'
is not present in cpu@0 and cpu@1 nodes:

allOf:
   - if:
        properties:
           compatible:
               enum:
                   - brcm,bmips3300
                   - brcm,bmips4350
                   - brcm,bmips4380
                   - brcm,bmips5000
                   - brcm,bmips5200
     then:
        required:
           - mips-hpt-frequency
     else:
        properties:
           mips-hpt-frequency: false

Thanks,
    Sergio Paracuellos
>
> Best regards,
> Krzysztof
