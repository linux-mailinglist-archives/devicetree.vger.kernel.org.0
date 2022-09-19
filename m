Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEE185BCB9C
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbiISMPb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:15:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbiISMPa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:15:30 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E00B3BF57
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:15:29 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id o184so14357318oif.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=UnlCmsEZJ8lxkFtwvGKDp8pOpVaR2HEI7RmcoLPHkpU=;
        b=cplwCt/UF93xGfSJqVX2Cm4bWa71ttMXERcSgLXbFYeV7YxwPhv3t+PA0ilgmzfgfJ
         VNLto92ZVY9WGRXtaXEuSDwGcvYS7ZLSvNRKImkMGitnerwH2qf6S5+yZG8guS38MdsG
         LI8iGWEN5Y2iHePFW06FjT9NOmudZA0qt7aYIoP+RX1ilOUrY/dMiNqLxaTkFn0qO27a
         Ra5QEpWLImXW8AwayxpOiQhFqBNnWVQFDlpKVxW0mNzyv8M96iZtF+ckMRttnYpBk5An
         LpEdMApbsK2op8Coy2OReOOchS91oXttUZ3PVgB0TmzPLIYHTIZE14tjyA2j9Yd7WKbY
         gpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=UnlCmsEZJ8lxkFtwvGKDp8pOpVaR2HEI7RmcoLPHkpU=;
        b=ldRR97ohxJSet8t2XjNC5tvfOO4b2SwfsDd0OrKPNS+yzpgHk4EJnX4GE+U9P8aN6j
         XlA5BSHo/yfidKKRKYY/huzHb2JnjGnWFzh22CxIRbzDIxub7BnkHAJy783kx2lTFPI9
         p75Vyqp9pFRfGyKfShmBQsLDr0ZGPgC/APNZZonv8ZKPwlPgFyXwqxBqgvp4pxsP7Pgf
         1jnNXIqTKdVoLhSHZZHV6UMT6ZAZVHdEySXKnPCE8W86g4nzcfkk9f3d/M/3ctcjJP8r
         RX+YbUrcSfAYZVYfzd99SX049LHlw8dq3L9V6QcrT/g96A1SneA8M1coz20SyOuH4zTY
         cMyg==
X-Gm-Message-State: ACrzQf2EL+ja5fNmZWSEf27QkO8Ou+mfrGgc5gWCvRPU3860D7LeSjpX
        +cgHDacnRaMVijt4+p4sVmdAfKsziK+yPiBuO+Qf9cpO2kc=
X-Google-Smtp-Source: AMsMyM7QaNySQMA7PvNNbsefu8192p7kQrC8NQkBwIoQfRU0Uaw+EAbIJu6NqPkLQIM6rNG8xzHAGkZdOOZpXMepuBY=
X-Received: by 2002:a05:6808:181e:b0:350:7776:9059 with SMTP id
 bh30-20020a056808181e00b0035077769059mr5236532oib.83.1663589729252; Mon, 19
 Sep 2022 05:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220916040044.487748-1-sergio.paracuellos@gmail.com> <67080aaa-3cfb-9190-4b5e-99a793677c7d@linaro.org>
In-Reply-To: <67080aaa-3cfb-9190-4b5e-99a793677c7d@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 19 Sep 2022 14:15:18 +0200
Message-ID: <CAMhs-H-1dFyJ3cQ1pEi6U4kpExSt1qhph1Tpac6fGifKJfMipQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: spi: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
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

On Mon, Sep 19, 2022 at 1:31 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/09/2022 06:00, Sergio Paracuellos wrote:
> > SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> >
>
> Rebase your patch on recent Linux kernel.

Understood.

>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/spi/ralink,mt7621-spi.yaml       | 68 +++++++++++++++++++
> >  .../devicetree/bindings/spi/spi-mt7621.txt    | 26 -------
> >  2 files changed, 68 insertions(+), 26 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt
> >
> > diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> > new file mode 100644
> > index 000000000000..a602406e2669
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/spi/ralink,mt7621-spi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > +
> > +title: Mediatek MT7621/MT7628 SPI controller
> > +
> > +allOf:
> > +  - $ref: /schemas/spi/spi-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: ralink,mt7621-spi
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
>
> Aren't these coming from spi-controller?

Yes, you are right. Will drop address-cells and size-cells in the next version.

>
> > +
> > +  clocks:
> > +    maxItems: 1
>
> You need to describe changes done. This does not look like pure conversion.
>
> > +
> > +  clock-names:
> > +    const: spi
>
> Why?

To match current nodes in dts files. Will drop.

> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: spi
>
> Why?

Ditto.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - resets
> > +  - reset-names
>
> Why?

Will drop reset-names.

>
> > +  - "#address-cells"
> > +  - "#size-cells"
>
> Use same style of quotes.

Will do.

>
> > +
> > +unevaluatedProperties: false
> > +
>
>
> Best regards,
> Krzysztof

Thanks,
    Sergio Paracuellos
