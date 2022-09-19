Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C97525BCBCE
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbiISM3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:29:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229850AbiISM3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:29:41 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBD46355
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:29:37 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id v3-20020a4aad83000000b00475e04866e6so1350911oom.5
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=cnJlE/qzIkn8jzqri1RBH8DhxRPgC9LZvFVSuLx/jEY=;
        b=TssstKU5PzV3u2fKFAmeG2ywghwm0Q0Br9d5GcVLUuWYk3sIRmT16ygRdUkkIscxKp
         rBalaIDwSN4QYMha1wwImH+FHVf6pbz1HTazVVc1itD5mPgxbEu2RuICYQr1lAhF8vnm
         8kyU4syyzKlxhC1U4/9GG5VYEJqK/iPjyCDNnBRgaku5fAyCtOQQRH0yJlENfKfvWqJz
         lN3lDSJrMwhOnkWwlUnV9NREP1EbLLltHdiLEBaOIlMie5BlC+4HXlw6VmaFqZXRgh3o
         9m2j7hHrUYOeSJb7QO6bj0HAuD7TlPCh/CGwAXrR/K4jv9omJqhCtH9hTpyMaBk/A/ku
         D3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=cnJlE/qzIkn8jzqri1RBH8DhxRPgC9LZvFVSuLx/jEY=;
        b=3KZV1LbXsJZEU+JXMwnFaf3qzxq3Bqb8RoPZYu8qzUqhoWOlIcwvlQKCQSdJW9nlD0
         T0pBqmboe6l5gTY9+LSBJGN/n+d393RgB2l3sZmTNxmQNN5RCUso0UzPcjMt3U9ip0CG
         qAVKHdz0rNCOeQdm9FOA88CVd9iqODN45l6XxnYc9tETPenYWRWlcheFzeG/6zLuHyfN
         /01ZAdG7YY1j3o2cuh+mK65N8+iZflGPBxevz8i/IOJ+JGHCx9rYUvr9qOQm7Q+dyI5e
         yRqiUEJbYqVTI3of9ip+dqS3VlX2wFOY+u9eDy7nB8GUYXifK8hGx4RV1qC4zi6F3C8d
         v0/A==
X-Gm-Message-State: ACrzQf0N0DlV2Co6blukHJz1Jq1u3gCwGHa8kamZ6btr1jv9RA6uLh/x
        VGGulDa1MBFsUfygdAN7NlFLgWNFXcsADD4ycM8=
X-Google-Smtp-Source: AMsMyM4rZXX5R93g7HSDAEXgeBJxGn2ldOSROkUjI73++7EzImYu0B20W3MUPqObwoaffnito4ISxwU66/eoN8P1uaw=
X-Received: by 2002:a4a:be06:0:b0:472:9d27:695e with SMTP id
 l6-20020a4abe06000000b004729d27695emr6624545oop.36.1663590576815; Mon, 19 Sep
 2022 05:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com> <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org>
In-Reply-To: <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 14:29:25 +0200
Message-ID: <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
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

On Mon, Sep 19, 2022 at 1:17 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/09/2022 06:11, Sergio Paracuellos wrote:
> > Add the yaml binding for available CPUs in MIPS architecture.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> Rebase on some recent Linux kernel tree and use scripts/get_maintainers.pl

Understood.

>
>
> > ---
> > Changes in v2:
> >  - Remove 'bindings/mips/brcm/brcm,bmips.txt'
> >  - Include 'mips-hpt-frequency' in cpus YAML schema for bmips CPUS's
> >  - Add a BMIPS CPU node sample
> >
> >  .../bindings/mips/brcm/brcm,bmips.txt         |   8 --
> >  .../devicetree/bindings/mips/cpus.yaml        | 100 ++++++++++++++++++
> >  2 files changed, 100 insertions(+), 8 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
> >  create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt b/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
> > deleted file mode 100644
> > index 8ef71b4085ca..000000000000
> > --- a/Documentation/devicetree/bindings/mips/brcm/brcm,bmips.txt
> > +++ /dev/null
> > @@ -1,8 +0,0 @@
> > -* Broadcom MIPS (BMIPS) CPUs
> > -
> > -Required properties:
> > -- compatible: "brcm,bmips3300", "brcm,bmips4350", "brcm,bmips4380",
> > -  "brcm,bmips5000"
> > -
> > -- mips-hpt-frequency: This is common to all CPUs in the system so it lives
> > -  under the "cpus" node.
> > diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
> > new file mode 100644
> > index 000000000000..361afde8ce0a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mips/cpus.yaml
> > @@ -0,0 +1,100 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mips/cpus.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MIPS CPUs bindings
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> What about existing maintainers?

Will add Thomas as maintainer, thanks.

>
>
>
> > +
> > +description: |+
>
> |+ seems not needed

Will drop.

>
>
> > +  The device tree allows to describe the layout of CPUs in a system through
> > +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
> > +  defining properties for every cpu.
>
> s/cpu/CPU/

Will change.

>
> > +
> > +properties:
> > +  reg:
> > +    maxItems: 1
> > +
> > +  compatible:
>
> compatible goes first.

Understood.

>
> > +    enum:
> > +      - brcm,bmips3300
> > +      - brcm,bmips4350
> > +      - brcm,bmips4380
> > +      - brcm,bmips5000
> > +      - brcm,bmips5200
> > +      - ingenic,xburst-mxu1.0
> > +      - ingenic,xburst-fpu1.0-mxu1.1
> > +      - ingenic,xburst-fpu2.0-mxu2.0
> > +      - loongson,gs264
> > +      - mips,mips1004Kc
> > +      - mips,m14Kc
>
> Maybe keep alphabetical order?

Ok.

>
> > +      - mips,mips24KEc
> > +      - mips,mips4KEc
> > +      - mips,mips74Kc
> > +      - mips,mips24Kc
> > +      - mti,mips24KEc
> > +      - mti,mips14KEc
> > +      - mti,mips14Kc
> > +      - mti,interaptiv
> > +
> > +if:
>
> Out it in allOf block

Understood.

>
> > +  properties:
> > +    compatible:
> > +      enum:
> > +        - brcm,bmips3300
> > +        - brcm,bmips4350
> > +        - brcm,bmips4380
> > +        - brcm,bmips5000
> > +        - brcm,bmips5200
> > +then:
> > +  patternProperties:
> > +    mips-hpt-frequency:
>
> It's not a pattern. Did you test the bindings?
>
> > +      $ref: /schemas/types.yaml#/definitions/uint32
>
> Missing description.

Will add it.

>
> else mips-hpt-frequency: false
>
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: true
>
> and this is why you did not notice errors...

Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
so I set additionalProperties to true and only make required for
'compatible'. What should be the correct approach?

>
> > +
> > +examples:
> > +  - |
> > +    cpus {
> > +      #size-cells = <0>;
> > +      #address-cells = <1>;
> > +
> > +      cpu@0 {
> > +        device_type = "cpu";
> > +        compatible = "mips,mips1004Kc";
> > +        reg = <0>;
> > +      };
> > +
> > +      cpu@1 {
> > +        device_type = "cpu";
> > +        compatible = "mips,mips1004Kc";
> > +        reg = <1>;
> > +      };
> > +    };
> > +
> > +  - |
> > +    // Example 2 (BMIPS CPU)
> > +    cpus {
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      mips-hpt-frequency = <150000000>;
>
> Does not match your bindings. Are you sure you tested the patches?

Yes I did:

$ make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
  DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb

Can you please point me to a sample of how to make required in a
parent node of cpu@X property 'mips-hpt-frequency' only for some
compatible strings inside the node? What can this be properly
expressed using schema??
I was looking and testing different things for a while without success at all.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos
>
> > +
> > +      cpu@0 {
> > +        compatible = "brcm,bmips4350";
> > +        device_type = "cpu";
> > +        reg = <0>;
> > +      };
> > +
> > +      cpu@1 {
> > +        compatible = "brcm,bmips4350";
> > +        device_type = "cpu";
> > +        reg = <1>;
> > +      };
> > +    };
>
>
> Best regards,
> Krzysztof
