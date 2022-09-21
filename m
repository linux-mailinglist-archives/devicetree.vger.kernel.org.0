Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7972E5BF6F2
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:05:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiIUHFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:05:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbiIUHFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:05:49 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9B6F491E3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:05:47 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id n124so6886471oih.7
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=vRD7RCw4AxN9EYO/NwZ6VqxDJVNR/icyfHqDUf/Ew8Q=;
        b=EucMCq1AVvBxe2rGx9nc8Sdi7ebYTLTQ6GDbKtHOncAaDc9OIF4VWG9WU9rgQwrA2s
         cMB/NfmBjTEHQEsSoZfxjUX88bHkITYLkrWGP0It7MV0ZnCiBPLh2DSp1JobIL/dRK38
         PBvIBjSCNDMDdd+Kh4EpeTZ7WROPU77CUeNispv5oIYFXYJmnPD1XF+CrlM+zzT6+UhD
         xBRr3SrEmskhWFgowUjOU77jbUXdIaTfFCswJSAVI8EXkGx1PQRLz2hyz5i07sbkcrJm
         7e9iQi5yM50b9EdyhtFe4qlaAF//Hb6F2U+Q2dVTrYrFQ2eJu7n6uyevz/Nmm4Yuffu3
         Vw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=vRD7RCw4AxN9EYO/NwZ6VqxDJVNR/icyfHqDUf/Ew8Q=;
        b=yzKfP9Hfh2lPnFw2RjhImtXGYCUtCOVm0D8js1zPiuhAF7h6LkvqxorxfInCqmcy01
         e6cPa0vbBiZJ7G0AtGvp51k16ZCr2h5lVUrdsDfdo2DWw5aPCT7jLWAXl5fH/1IsD82w
         GcH2UGQZFJ+Nt+4b53wy8pRFekfZmlNSh39gCrJQwl5ecQ3GqkCMiArqbtoo3yatuTl5
         CpVpvZGNQYg53yEAovD1u/qRS9QYV03gJ7SkvpxGUC7Ssu53UBovU382wYdEwxViagQa
         S8Fx3UNP2khT57UvfXX3tudVH19a+G776MFsOGkDQe/7UW6vlINB506RniQ4LW94TEMA
         7Dpw==
X-Gm-Message-State: ACrzQf2xoAEOzn8fMTOWDTI/pgh3QSOzoMlf8yfmpvIRxr2Ee1VIbUD5
        n138eqdmaGc5GulmvJX4nBUza6tPFercQIaSUnw=
X-Google-Smtp-Source: AMsMyM4rxmxfn2JAo8JB7woDQpCZe0w32DNihbZoyeArBY07nmQqsc//gKcOoXzj4SJ04Fs0hpdlBt8OZxkhwJxMiho=
X-Received: by 2002:a05:6808:23ca:b0:350:92c4:3422 with SMTP id
 bq10-20020a05680823ca00b0035092c43422mr3266515oib.144.1663743946600; Wed, 21
 Sep 2022 00:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220920052735.582768-1-sergio.paracuellos@gmail.com> <4a6d5f62-a0af-3117-1dff-2dee955dded5@linaro.org>
In-Reply-To: <4a6d5f62-a0af-3117-1dff-2dee955dded5@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 09:05:35 +0200
Message-ID: <CAMhs-H8BJDuN-py3eOX8dbH1YO0rz6UZR3PEgB3rbs3JxzXDzw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: spi: migrate mt7621 text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Wed, Sep 21, 2022 at 8:44 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/09/2022 07:27, Sergio Paracuellos wrote:
> > SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> > There are some additions to the binding that were not in the original
> > file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> > properly match both dts nodes in tree we need to add to the schema
> > 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> > 'reset-names' use 'spi' as string so maintain that as const in
> > the schema.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks!

>
> (plus one more comment)
>
> > ---
> > Changes in v2:
> > - Address review comment from Krzysztof:
> >     - Rebase onto last kernel version.
> >     - Drop address-cells and size-cells.
> >     - Explain deviations from the original file in commit message.
> >     - Drop reset-names as required property.
> >
> >  .../bindings/spi/ralink,mt7621-spi.yaml       | 61 +++++++++++++++++++
> >  .../devicetree/bindings/spi/spi-mt7621.txt    | 26 --------
> >  2 files changed, 61 insertions(+), 26 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/spi/spi-mt7621.txt
> >
> > diff --git a/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> > new file mode 100644
> > index 000000000000..22879f7dcb77
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spi/ralink,mt7621-spi.yaml
> > @@ -0,0 +1,61 @@
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
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: spi
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    const: spi
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - resets
> > +  - "#address-cells"
> > +  - "#size-cells"
>
> You could make clocks required, if you know that they are in fact
> required for hardware to operate and they are always provided (e.g. not
> hard-wired internally somehow).

CLocks are required by MT7621 SoC but MT7628 is not using them in current DTS:

https://elixir.bootlin.com/linux/v6.0-rc5/source/arch/mips/boot/dts/ralink/mt7628a.dtsi#L187

That is the reason to not include them as required.

Thanks,
    Sergio Paracuellos

>
> Best regards,
> Krzysztof
