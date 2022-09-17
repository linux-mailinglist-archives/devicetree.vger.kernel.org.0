Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 423CB5BB608
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 06:16:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbiIQEQI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 00:16:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbiIQEQF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 00:16:05 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A131586894
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:16:03 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id r13-20020a056830418d00b0065601df69c0so10794310otu.7
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=j33cUlZZWKXECD1P2IJYkoO7zTLH6R6Fsc4yGFj0Of4=;
        b=ghj0yisB3cch+BhEIM5b0y93oEpVt2xno8TqW1V8vMCDn856Q40phxMIxarQXgl/zX
         dXXZuepgeU3wBhgNrx5OH+8oskeFbNozzxHs2pNFo30C4BS7WYY2Z65kzHCcVCJ6bwEF
         cuEZmtTItsbZ5aJvEdUAEdRxWM6QeU7fpbJpCrIbSIk3Lf89psQh9F7k8Ulegqg1cAjA
         YX8Q27rtqsd6MJMeqxogcysA3O18FQfWjjGCT4PlzRFe7lx2qnVkjRjhnow5XzMSPaEf
         b0fsPGqVC9OA6TDJOl8E6esOt2+sHjJdV1TqaVt4+J7jjParY5x7dll54lBXb2tjdvQ5
         eIng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=j33cUlZZWKXECD1P2IJYkoO7zTLH6R6Fsc4yGFj0Of4=;
        b=p0QbxaCD1s4MYZGfB+O3ql8T2UaCv/+G4Afy72du1hCakfVsSDwETifo6bnnIn2B07
         arNZdhOsjl2eCCbXnKcA40ehthB5oo6I/vUbTybwWIyXvItdtHBt//1f6nwT0XZNA3ND
         /Ise5ct1UZfn9Qkf/PmXmYBlDpJq2BJlsV1U0HYurl6oGnFAN4Oq0cRYCmhcT97x6vKw
         Tyg22qi1x6oLNzhgwTPwpKiU+0rQvnNyaYhjDtLasou4ZgfAv7KJ1CM9WvvCvDWm5GDd
         yqEc9O8q4BXFQda3nxSFh+dTYEZThr2h6hwDL5OFlEwey+r3Wo4HwE6Uo8qs7IIjsafr
         wNvQ==
X-Gm-Message-State: ACrzQf2m6Gi3iTAVjilvr5ioAiDcCYWHoM57Oz+MwFleXlufB1sTrXQ4
        taQRKJKKnPWG+BcPy33kWBiMNuzsXG4YN/aW6sahufJPtPibSA==
X-Google-Smtp-Source: AMsMyM6zSEPgreGPfSyoLJ8TtcZrqdigJqWrLr/MF3JuCrfSbuZ9whXHAVCPaIS0T3kI08SGv+BFG/+OSO9+BDBpkUY=
X-Received: by 2002:a9d:7550:0:b0:655:bcdc:f546 with SMTP id
 b16-20020a9d7550000000b00655bcdcf546mr3801502otl.304.1663388162957; Fri, 16
 Sep 2022 21:16:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220915055514.463241-1-sergio.paracuellos@gmail.com> <20220916193447.GA1134515-robh@kernel.org>
In-Reply-To: <20220916193447.GA1134515-robh@kernel.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Sat, 17 Sep 2022 06:15:51 +0200
Message-ID: <CAMhs-H-eUTOHjAXAbywOXQJgc_j5Ex-1sB7eBZU_bWt1fpNVzA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mips: add CPU bindings for MIPS architecture
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
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

Hi Rob,

On Fri, Sep 16, 2022 at 9:34 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Sep 15, 2022 at 07:55:14AM +0200, Sergio Paracuellos wrote:
> > Add the yaml binding for available CPUs in MIPS architecture.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../devicetree/bindings/mips/cpus.yaml        | 66 +++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
> > new file mode 100644
> > index 000000000000..4277adc65ed6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mips/cpus.yaml
> > @@ -0,0 +1,66 @@
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
> > +
> > +description: |+
> > +  The device tree allows to describe the layout of CPUs in a system through
> > +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
> > +  defining properties for every cpu.
> > +
> > +properties:
> > +  reg:
> > +    maxItems: 1
> > +
> > +  compatible:
> > +    enum:
> > +      - brcm,bmips3300
> > +      - brcm,bmips4350
> > +      - brcm,bmips4380
> > +      - brcm,bmips5000
> > +      - brcm,bmips5200
>
> You need to remove bindings/mips/brcm/brcm,bmips.txt. But it also
> defines a property which needs to be added.

I have addressed this in v2:
  https://lore.kernel.org/linux-devicetree/20220917041136.526446-1-sergio.paracuellos@gmail.com/T/#u

>
> I didn't check the rest for existing documentation...

The rest of compatible strings for cpu's that I am listing here seems
to not contain associated txt bindings description, so I guess if
anything extra is needed / required can be added afterwards?

Thanks,
   Sergio Paracuellos

>
> > +      - ingenic,xburst-mxu1.0
> > +      - ingenic,xburst-fpu1.0-mxu1.1
> > +      - ingenic,xburst-fpu2.0-mxu2.0
> > +      - loongson,gs264
> > +      - mips,mips1004Kc
> > +      - mips,m14Kc
> > +      - mips,mips24KEc
> > +      - mips,mips4KEc
> > +      - mips,mips74Kc
> > +      - mips,mips24Kc
> > +      - mti,mips24KEc
> > +      - mti,mips14KEc
> > +      - mti,mips14Kc
> > +      - mti,interaptiv
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: true
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
> > --
> > 2.25.1
> >
> >
