Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3818582981
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 17:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233964AbiG0PWL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 11:22:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234031AbiG0PWG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 11:22:06 -0400
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037ED45048
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 08:22:06 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id e69so13807063iof.5
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 08:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wjYTAGA/VZ3ZniZqjTtfUNrJP4ztDLjgxacwIkFNs6Q=;
        b=1twnz92ynXJESqeLenMR2vOdfz9g5YeUMReONfPNqyl+TnohU4NEwEiejNirJvLFRb
         JwhqWc5550E7LeOTueytvxN2HqwrbbTnjcsQCIknR8pr7E5CF/MOFY0aUhvjcXj/H91E
         TEeLxO8RtW6v6NjDbqBmN20Pqct6lvlWRPv3kxTTi+G/14ViBvncpLx6U/pvqga3A8GA
         KwBcfMgRmoup18qN986ALC8BXES5uH4ra7Jx0bbiL+Chcll0yb6F4QfE+YgguH0s0w3B
         ImkuJptBnasm3Kzpvd3GcfBgzcjvHE4DBKHp29BQNvmztAS+/rynKzFhZhaakFYju/a2
         uyNw==
X-Gm-Message-State: AJIora+qX+uRg5BLDv3elDcrWK1dV1xRu/AuT2AQieTRYBgH1BBzbhT5
        y2Sofiqw7aPc/y3A4GsW/g==
X-Google-Smtp-Source: AGRyM1vC33wWQu8+g4EEwhee47QaNR7r4PO7l/xs7XwRvzOZjbQsVp+65gFQC/S+wl+Gw09noEqc0Q==
X-Received: by 2002:a05:6638:2684:b0:341:5862:75dd with SMTP id o4-20020a056638268400b00341586275ddmr9401915jat.166.1658935325162;
        Wed, 27 Jul 2022 08:22:05 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id b66-20020a0295c8000000b0033f258426c0sm7794275jai.108.2022.07.27.08.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 08:22:04 -0700 (PDT)
Received: (nullmailer pid 2693193 invoked by uid 1000);
        Wed, 27 Jul 2022 15:22:03 -0000
Date:   Wed, 27 Jul 2022 09:22:03 -0600
From:   Rob Herring <robh@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, broonie@kernel.org, devicetree@vger.kernel.org,
        ckeepax@opensource.cirrus.com,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Message-ID: <20220727152203.GA2681685-robh@kernel.org>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
 <20220726131747.127992-2-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726131747.127992-2-zhuning0077@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 09:17:47PM +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8326.yaml        | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
> new file mode 100755
> index 000000000000..f6aa3c03d456
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/everest,es8326.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Everest ES8326 audio CODEC
> +
> +maintainers:
> +  - David Yang <yangxiaohua@everest-semi.com>
> +
> +properties:
> +  compatible:
> +    const: everest,es8326
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for master clock (MCLK)
> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  everest,jack-pol:
> +    description:
> +      just the value of reg 57. Bit(3) decides whether the jack polarity is inverted.
> +      Bit(2) decides whether the bottom on the headset is inverted.

s/bottom/button/?

> +      Bit(1)/(0) decides the mic properity to be OMTP/CTIA or auto.
> +    $ref: /schemas/types.yaml#/definitions/uint8-array

Array or...

> +    minimum: 0
> +    maximum: 0x0f
> +    default: 0x0f

Scalar?

> +  
> +  everest,mic1-src:
> +    description:
> +      the value of reg 2A when headset plugged.
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    minimum: 0x00
> +    maximum: 0x77
> +    default: 0x22
> +
> +  everest,mic2-src:
> +    description:
> +      the value of reg 2A when headset unplugged.
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    minimum: 0x00
> +    maximum: 0x77
> +    default: 0x44
> +
> +  everest,jack-detect-inverted:
> +    description:
> +      Defined to invert the jack detection.

What's the difference with this and bit 3 of everest,jack-pol?

We already have numerous vendor properties for jack detect. Can we come 
up with something common?

The problem with 'inverted' is it assumes you know the non-inverted 
state. Better to just state high or low.

> +    $ref: /schemas/types.yaml#/definitions/flag
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#sound-dai-cells"
> +
> +

Extra blank line.

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c0 {

i2c {

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      es8326: codec@19 {
> +        compatible = "everest,es8326";
> +        reg = <0x19>;
> +        clocks = <&clks 10>;
> +        clock-names = "mclk";
> +        #sound-dai-cells = <0>;
> +        everest,mic1-src = [22];
> +        everest,mic2-src = [44];
> +        everest,jack-pol = [0e];
> +      };
> +    };
> -- 
> 2.36.1
> 
> 
