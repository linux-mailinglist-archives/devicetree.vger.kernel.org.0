Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E35EB592677
	for <lists+devicetree@lfdr.de>; Sun, 14 Aug 2022 23:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiHNVKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Aug 2022 17:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbiHNVKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Aug 2022 17:10:22 -0400
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1FB1C02
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 14:10:20 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id w197so6916292oie.5
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 14:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=NgZLm2cWgYFq+9oanwDv8zaUrcdQCdnFsnMaWhgPe20=;
        b=2GUoXVkUCe+NFgW4RAhIAwd+vGTFP4IRXmCQJW9rUV0bsgssLJs93YRTwPY3qjgxB8
         JHUsDA9kyxJVNygY+eyBsqJZc8TwkCn54/MBt9ZRT9Bqoq5xgHQ4sRE9JEdf3M6Ux26K
         6lTBVKRO7+Itd96ZGaOCiaS2ZyVgKychPshOsCmArHZw2RnjOq9quqMti/ITUXE1GnbU
         vssdaKlOqtOi97Y8fr9JVdc4fIzki3AbcT9SCQ7GPthdd6FbYwMwufN/WKvqEPYG8emh
         2uS+ekP6EzSBTw0pflPFYCVCLHlzkgUJDD/OLUBW70d5kcoDFUbinUeyCPggeLUJhu+b
         dJVw==
X-Gm-Message-State: ACgBeo1Dk/4JxmyPtQXhRyKijOJFUg2GLAGzj4aUirOcQ2e2XhG0+BH0
        ixVMdRBvRm0U0DjMSyZpocDoACUevA==
X-Google-Smtp-Source: AA6agR5MTEa1TMRTzJKx2Kru9JKl91A72OXDu1QQBPhfyNV94oMqdRGcpcBZHYhlMtdRXgP+tIAGlg==
X-Received: by 2002:a05:6808:118e:b0:337:b6f3:67ca with SMTP id j14-20020a056808118e00b00337b6f367camr5544667oil.111.1660511419988;
        Sun, 14 Aug 2022 14:10:19 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.176.57])
        by smtp.gmail.com with ESMTPSA id 19-20020aca0d13000000b0033ad6ea8d11sm1492702oin.47.2022.08.14.14.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Aug 2022 14:10:19 -0700 (PDT)
Received: (nullmailer pid 715238 invoked by uid 1000);
        Sun, 14 Aug 2022 21:10:15 -0000
Date:   Sun, 14 Aug 2022 15:10:15 -0600
From:   Rob Herring <robh@kernel.org>
To:     Matt Flax <flatmax@flatmax.com>
Cc:     devicetree@vger.kernel.org, broonie@kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v2] ASoC: codecs: dt bind. doc for the new TI SRC4392
 codec
Message-ID: <20220814211015.GA712258-robh@kernel.org>
References: <20220810221232.1596488-1-flatmax@flatmax.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220810221232.1596488-1-flatmax@flatmax.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 11, 2022 at 08:12:32AM +1000, Matt Flax wrote:
> Signed-off-by: Matt Flax <flatmax@flatmax.com>
> ---
> 
> Notes:
>     v2:
>     * Added myself as the maintainer
> 
>  .../devicetree/bindings/sound/src4xxx.yaml    | 50 +++++++++++++++++++

ti,src4xxx.yaml

>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/src4xxx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/src4xxx.yaml b/Documentation/devicetree/bindings/sound/src4xxx.yaml
> new file mode 100644
> index 000000000000..368bb4ba1a77
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/src4xxx.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings. (GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/src4xxx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments SRC4392 Device Tree Bindings
> +
> +description: |
> +  The SRC4392 is a digital audio codec that can be connected via
> +  I2C or SPI. Currently, only I2C bus is supported.
> +
> +maintainers:
> +  - Matt Flax <flatmax@flatmax.com>
> +
> +allOf:
> +  - $ref: name-prefix.yaml#
> +
> +properties:
> +  compatible:
> +    const: ti,src4392
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  reg:
> +    description:
> +      The I2C address of the device

No need for generic descriptions.

> +    maxItems: 1
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        src4392@70 {

audio-codec@70

> +            #sound-dai-cells = <0>;
> +            compatible = "ti,src4392";
> +            reg = <0x70>;
> +        };
> +    };
> +...
> -- 
> 2.34.1
> 
> 
