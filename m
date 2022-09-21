Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA5455BF704
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbiIUHID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:08:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbiIUHHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:07:44 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F001881B32
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:37 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-127d10b4f19so7750551fac.9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=MT1vV1IbEbenhlAf5Z82qjgkD4R/lNsQ9eKBy1+od7k=;
        b=d+qkaj4qPum7uZaBtQmAxwh713fWBkjA3Hyr6z7h2BaoyV6hosaK70DeN9OYXMPGD6
         LAGFgs2iWyYCcKC9jQxDaSZ5Nf26ZdhYOVs6qzdjYhZEEHZLYqH2k4LWyAgNmDQSVOYC
         1mmUCtgNVfDJ/4gL7uuTK0qv4mQhZ7vg5vGrLjqObdRIOiSllRlZfjnFqHv/ZtMS08K5
         0QQmGRcxVVyhLNchnFHbQ3B9Zaig4OA380+xNj5/YOX7WB1YSzWOmhW/+Sl+wkIxTS1D
         qEWWZhecVsW8kT3z07rVh2Kont/AQomx6j0dZTstBlid3/k1peWBt+4kdIrc4Xl7qk4X
         PqGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=MT1vV1IbEbenhlAf5Z82qjgkD4R/lNsQ9eKBy1+od7k=;
        b=6obZZoLmQ1uhi+Rs1HtExFSXBD605eGhOp5gIU+fmifPT1Qsh320y+J6JmOVZGvHkQ
         OGkXh2vEY3gw4iOex75ZNSF4kXqSawOi26+KKei8yMPo4RRsixiwdHl5LqkarUHGEhPb
         P/+mwmK9u0ACvdakkVyNGnT9YWsOG5DTI4GstDFXyul3PACyD/iQoOz87qN54EzZAE1r
         e3DN179SGoZ6aHSPv864MaOz+qEoNz11QB+oXJdovyHAbSih2S+a62ypjY+6qrGP/+UR
         uaJIsj5rS1yKSbFL6QdHV271XTx2V+H1rkfjN2thry7/WuAybDotKlXZTuzpxL8/j8su
         71xA==
X-Gm-Message-State: ACrzQf0DcPUqFRa6kadp8haoz1vsDtUTsngcYPReRwGpzDCZJWCwHyF0
        9R85dtWwgFbnAFcQrKYnH4KynsmPHVl2Nh/7cWh8OCAWRC6aYQ==
X-Google-Smtp-Source: AMsMyM7QD5vhZkg+SHqv56v0Mlb+lQ+8gBViwqQzgAvSZ5CDsBJECvvr0lIEOeIMvGcUSOEl0oq12YAPnAYS0ps8Exs=
X-Received: by 2002:a05:6870:e615:b0:12d:943e:256a with SMTP id
 q21-20020a056870e61500b0012d943e256amr293048oag.83.1663744057348; Wed, 21 Sep
 2022 00:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220920052050.582321-1-sergio.paracuellos@gmail.com> <b21c4c3e-44b2-89d3-980b-13a9280137a2@linaro.org>
In-Reply-To: <b21c4c3e-44b2-89d3-980b-13a9280137a2@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 09:07:25 +0200
Message-ID: <CAMhs-H_x1dmsaVn7Dt8zyhv2CWH9GQy3L-65O8WuJSatEzm6jg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: i2c: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Wed, Sep 21, 2022 at 8:47 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/09/2022 07:20, Sergio Paracuellos wrote:
> > SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> > There are some additions to the binding that were not in the original
> > txt file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> > properly match both dts nodes in tree we need to add to the schema
> > 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> > 'reset-names' use 'i2c' as string so maintain that as const in
> > the schema. Also, Properly update MAINTAINERS file to align the
> > changes.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks!

>
> plus two comments:
>
> > ---
> > Changes in v3:
> > - Address review comment from Krzysztof:
> >     - Rebase onto last kernel version.
> >     - Drop address-cells and size-cells.
> >     - Properly explain deviations from txt in commit message.
> >     - Drop reset-names as required property.
> >     - Squash previous series two commits in one to be bisectable.
> >
>
> (...)
>
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +maintainers:
> > +  - Stefan Roese <sr@denx.de>
>
> You can also add yourself if you have the interest, the hardware or the
> datasheets.

Ok, thanks.

>
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
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: i2c
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: i2c
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - resets
> > +  - "#address-cells"
> > +  - "#size-cells"
>
> Similarly to spi, the clocks might be added to required properties, if
> they are really needed.

CLocks are required by MT7621 SoC but MT7628 is not using them in current DTS:

https://elixir.bootlin.com/linux/v6.0-rc5/source/arch/mips/boot/dts/ralink/mt7628a.dtsi#L203

That is the reason to not include them as required.

Thanks,
    Sergio Paracuellos

>
> Best regards,
> Krzysztof
