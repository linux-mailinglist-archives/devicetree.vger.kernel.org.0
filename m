Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54192646A46
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 09:18:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiLHIS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 03:18:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbiLHIS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 03:18:27 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB66240A4
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 00:18:25 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id p8so876497lfu.11
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 00:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cgcul1mWG5cTn0rJoGABhV7MJkGLyW5lbBKqxt2C92U=;
        b=HQpPOEHNKdV3NSYBDwI9oOryazBztBi9HmA+Bwtv5UTDpAUFrFJJGqMaq87XoV7KuL
         6mSDCg9NRpMuK7ks5epp58iD2aweYQPSxOAFotzQJXLvxMbeYjFC4DpBgRw7KHYNdcLe
         vAOsEH4zmg1LbrobNVxxPcq0UIgZnQE5uxYIIHVidV3Bcdd24mT1bvLbF5ZTgiqVDpi8
         0n2+51EhUm9eReu2ti9fAuobdTRUMHGpSp0rrUBoFpQz/x/1AD4i1l7QLe0PnWqFY+cM
         hPk/+GGWb9fUXeHomF5Arv4ZNwS6m/s9jsSm89oNMqN4WtJk3J6N3ZRnc5oaO/2rrJnx
         Ajaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cgcul1mWG5cTn0rJoGABhV7MJkGLyW5lbBKqxt2C92U=;
        b=Ks/D0VopcGx29a6XxMd6lwe9zEvoeYlvcywXDuiIUWHIo+1Tf/X1otWKoSoQrDpNrB
         IOM877mglP40nRsrIx6NbVdEL/D4CbqVhAmNEDOLwEEOefdBcAkjoGvmGHnEUGcu4LQk
         D2jwyF/wJdG8Oaws6DMDuUMxD746O2++Lh4h2kjua3RQJCy5fbtFcuwuiy6tAwAca1Vq
         3qEVgGMCCPxifKH9N2mmiHZoqv5dcHMV8xQLyZvOFoigI3FOaDnrQGacI6dfrblRRnkl
         U3enrx2DOrbysoroeS//dv1huZzzvrNNTMA9/lY50eyF3msnPKbQoiPVxo//8hx9spGN
         E++w==
X-Gm-Message-State: ANoB5pm+i6BVQp5AMhStALRP1IxuYVq5XA7Wjra+sjR3fFuskoIMsDI/
        DZV9twJE3xCSp83G/bAmShA1/A==
X-Google-Smtp-Source: AA0mqf5eogBw7Tqr3mcVvfQlFqGBp1oG8sXa02kZaNQIHS+oBQzBHJ+OFib5JmonmPfvf19H1ghrcQ==
X-Received: by 2002:a05:6512:3b13:b0:4b0:efed:e3a5 with SMTP id f19-20020a0565123b1300b004b0efede3a5mr34193863lfv.75.1670487503875;
        Thu, 08 Dec 2022 00:18:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m2-20020a195202000000b004a47e7b91c4sm3206510lfb.195.2022.12.08.00.18.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Dec 2022 00:18:23 -0800 (PST)
Message-ID: <5b930984-4593-b70e-ba49-04e87700527c@linaro.org>
Date:   Thu, 8 Dec 2022 09:18:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 10/16] dt-bindings: soc: socionext: Add UniPhier
 SoC-glue logic debug part
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221207055405.30940-1-hayashi.kunihiko@socionext.com>
 <20221207055405.30940-11-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221207055405.30940-11-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2022 06:53, Kunihiko Hayashi wrote:
> Add devicetree binding schema for the SoC-glue logic debug part
> implemented on Socionext Uniphier SoCs.
> 
> This SoC-glue logic debug part is a set of miscellaneous function
> registers handling signals for specific devices outside system
> components, and also has multiple functions such as efuse, debug unit,
> several monitors for specific SoC, and so on.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../socionext,uniphier-soc-glue-debug.yaml    | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-soc-glue-debug.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-soc-glue-debug.yaml b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-soc-glue-debug.yaml
> new file mode 100644
> index 000000000000..db13c56b77b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-soc-glue-debug.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/socionext/socionext,uniphier-soc-glue-debug.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier SoC-glue logic debug part
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +description: |+
> +  SoC-glue logic debug part implemented on Socionext UniPhier SoCs is
> +  a collection of miscellaneous function registers handling signals outside
> +  system components for debug and monitor use.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - socionext,uniphier-ld4-soc-glue-debug
> +          - socionext,uniphier-pro4-soc-glue-debug
> +          - socionext,uniphier-pro5-soc-glue-debug
> +          - socionext,uniphier-pxs2-soc-glue-debug
> +          - socionext,uniphier-sld8-soc-glue-debug
> +          - socionext,uniphier-ld11-soc-glue-debug
> +          - socionext,uniphier-ld20-soc-glue-debug
> +          - socionext,uniphier-pxs3-soc-glue-debug
> +          - socionext,uniphier-nx1-soc-glue-debug
> +      - const: simple-mfd
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^efuse(@[0-9a-f]+)?$":

Unit addresses are not optional.

Best regards,
Krzysztof

