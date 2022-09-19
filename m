Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CEB5BCB0B
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:49:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbiISLto (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:49:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiISLtn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:49:43 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D91D66416
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:49:41 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 102-20020a9d0bef000000b0065a08449ab3so1956972oth.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=N13YfU07EY/vw08e9spp5acshrafK/ayqR8tE8q0N4g=;
        b=Rjl9dU8qeDx7pFntwDgR6H2D7/nBc3Hsbck1hm767e0CaXq3NUgXG2DTef6VsqdVvl
         LLFC/BZA39P0eucI4P3aa9EME5CBdJBWpfNDr5DoDBw99MG8WY7lPns/gzYqYcyqy7H6
         gsWwphXnJvKdPNKye448wfgSbHuXqBXwEBkxLjfEpm9VpCKxZDb8JiqLk1v5L751GJ6p
         +7AcgCXH8Izd2lAtPIsne7t3P65mwg1+MXZfWf0uLC029GcwibytehQvMXKeLhGI+8La
         OvbJjgcoI5wq85TH24dCsDYCZAhwrJQcos1482rPXqaq56OO7oIMTxnCqnaHdkGzIGGl
         7vhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=N13YfU07EY/vw08e9spp5acshrafK/ayqR8tE8q0N4g=;
        b=TJMlf5c09KqMIfFUS/79mK6aESW/gB4ZCHVL02b2dC5Vq26E7ir1BSiZhONLWnbo9Q
         h+N/mIGaxZ2qA+A/yNoRQKcw3AFWoYES8HSg5xgFh+vbnBBi8RdfNMxnB0PbutHpKgGl
         I68uc+O935an50f57U5Fszr8VnM/pUwAz7hvjGYZQ+Wx3wFm1r33yTK2R34829zTelKo
         prcWeHVBHXzfslhXd6GQvgH/y5Z/Fs/OEx9nxYlkUeyGnf5CQB+l19MP2AP/Qi4Qr9W3
         cWn2L9LN/IT7Y6xX0IHhK6j1vZGaLkgE9+IagGDKkZRetKnNkRZ9j0MEiNMYJssfzzqj
         sa8w==
X-Gm-Message-State: ACrzQf05CFJRHHRCKK9/DPxMocAqeKqPGDadCbbrA2G7Vxxv8KawofuJ
        g5iDmipOVYQq9MIoHAGESVw6ntq/9DVryj213IK5orgsRAnHeg==
X-Google-Smtp-Source: AMsMyM5QPy9a5+L0FtdwGNa1hT+CDloxyIAZ05Q7rQ5I0ojgCcm5K1jD8qWlmk8EmEZMSpxXmumRHNpQ2XNT2ue8fkM=
X-Received: by 2002:a9d:19ca:0:b0:655:bcdc:f546 with SMTP id
 k68-20020a9d19ca000000b00655bcdcf546mr314972otk.304.1663588181191; Mon, 19
 Sep 2022 04:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com> <41c7a2a1-86b2-289b-8507-6f3d462aa1ed@linaro.org>
In-Reply-To: <41c7a2a1-86b2-289b-8507-6f3d462aa1ed@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 13:49:29 +0200
Message-ID: <CAMhs-H9aT1+BNR6fudMiZ+6xWevqkMm=XMjgwHDD6c6YXwn-Ng@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        sr@denx.de
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

Thanks for the review.

On Mon, Sep 19, 2022 at 1:20 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/09/2022 06:27, Sergio Paracuellos wrote:
> > SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
>
> Again, do not base your patches on something old.

I will take it into account from now on. Since it was just an addition
and removal of a file I thought it was not important. So, I guess some
address I am using in CC is not listed in the MAINTAINERS file now??

>
> > Changes in v2:
> > - Maintain current maintainer Stefan Rose as listed in kernel MAINTAINERS file.
> >
> >  .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 -------
> >  .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 68 +++++++++++++++++++
> >  2 files changed, 68 insertions(+), 25 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> >  create mode 100644 Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt b/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> > deleted file mode 100644
> > index bc36f0eb94cd..000000000000
> > --- a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> > +++ /dev/null
> > @@ -1,25 +0,0 @@
> > -MediaTek MT7621/MT7628 I2C master controller
> > -
> > -Required properties:
> > -
> > -- compatible: Should be one of the following:
> > -  - "mediatek,mt7621-i2c": for MT7621/MT7628/MT7688 platforms
> > -- #address-cells: should be 1.
> > -- #size-cells: should be 0.
> > -- reg: Address and length of the register set for the device
> > -- resets: phandle to the reset controller asserting this device in
> > -          reset
> > -  See ../reset/reset.txt for details.
> > -
> > -Optional properties :
> > -
> > -Example:
> > -
> > -i2c: i2c@900 {
> > -     compatible = "mediatek,mt7621-i2c";
> > -     reg = <0x900 0x100>;
> > -     #address-cells = <1>;
> > -     #size-cells = <0>;
> > -     resets = <&rstctrl 16>;
> > -     reset-names = "i2c";
> > -};
> > diff --git a/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> > new file mode 100644
> > index 000000000000..8234f770f529
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +maintainers:
> > +  - Stefan Roese <sr@denx.de>
> > +
> > +title: Mediatek MT7621/MT7628 I2C master controller
> > +
> > +allOf:
> > +  - $ref: /schemas/i2c/i2c-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,mt7621-i2c
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#address-cells':
> > +    const: 1
>
> No need, comes from core schema.

Will drop, then.

>
> > +
> > +  '#size-cells':
> > +    const: 0
>
> No need

ditto.

>
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: i2c
>
> Why adding this?
>
> You need to describe in commit msg all deviations from pure conversion.

Looking into the users of this binding I added all the stuff I found
in dts nodes. So I think it is preferred to just make a pure
conversion and set unevaluatedProperties to true?

>
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: i2c
>
>
> Why adding this?

ditto.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - resets
> > +  - reset-names
>
> Why?

Will only required those included in a pure conversion of the txt, thanks.
>
> > +  - "#address-cells"
> > +  - "#size-cells"
>
> Use the same type of quote as in other places.

Understood.

>
> > +
> > +unevaluatedProperties: false
> > +
>
> Best regards,
> Krzysztof

Thanks,
    Sergio Paracuellos
