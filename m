Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 809FB60D142
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 18:06:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbiJYQGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 12:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231523AbiJYQG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 12:06:29 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11840182C5C
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 09:06:29 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id hh9so7802845qtb.13
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 09:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YdYRsJGfP0o692+sENJJoDb7VImvlyzZSXWPyoNbrBE=;
        b=E5dsJHEWS0QV/kLIRQIT/MTMWU34Rbba8D+H3idaiQhx1qjgKSP2GsQOVpgp3Xq6A9
         2Qzzf5/vgfDEfv3LSDtU5B/hCM4p0ge2B3h1C3GeQZEhywLr78cgiPIIgQY4xPfTbWOH
         ceSuvKVUxtN4EbfQQiXk6npaq61LIVNwO6V9+IlUC4IooD7Z3/Goe7Y/7tTtMUd4z1FH
         QkV6xRLU3ChNnye5LzU14ot5Kf3cqzEus8ux+oTFDFesZIdX8QrfZD6Yxf8AsR++rtuL
         Nb120S4I2OdJeEYa1suup6xMua9BsUx0lOG1T1+2r5QFpmjf57O7hBfQf2i0Ok5t07CM
         V4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YdYRsJGfP0o692+sENJJoDb7VImvlyzZSXWPyoNbrBE=;
        b=bwJ9RmYUfoC3BOIrmQ8nKyxFBJTJygBbGfutJ6Jq4TZH2hOcEymUVsQVj/QvAlVjG/
         hHYCxIUmTHegynS77SnbJWTrBcVgNGbLs4gjis5/I/r7cEn/fXARhck0rhKWaG8dV6Yn
         lczAefxesnTLii0cN5bObtdNnA9NGDdD9K9R9T6FbFZKpbBFSDUQLXcT8dOCtHlC0X9w
         /aCsP/dxwIK8Xko6DXdMmLFyF7rX0U8Hin0FCoqh0qGsCQKar6iCiJatzBYA3d5VHGny
         RzzP03fs5135tinlRL/CbN9mAerc3kQx86u17fP0wkazgKS8V1LlOtwN5n9slf1zRaC8
         w+0w==
X-Gm-Message-State: ACrzQf1HgcAtfBPc8LBCDKj1jBv+/nrA/up8LaY9mOZz3H7v7MStIpIO
        hTaY7aUa9MQUGYTIObvT9QlouywVY6svZQ==
X-Google-Smtp-Source: AMsMyM6ZGC4n3kePbJpSDHf8KfIYUGV5TulBZH5aW+O9SAvn5G03fp+CFlFKq01U8uo63pNSOGO3cA==
X-Received: by 2002:ac8:5e13:0:b0:39d:c27b:b6a7 with SMTP id h19-20020ac85e13000000b0039dc27bb6a7mr19234333qtx.183.1666713988186;
        Tue, 25 Oct 2022 09:06:28 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id f12-20020a05620a280c00b006ec51f95e97sm2260454qkp.67.2022.10.25.09.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 09:06:27 -0700 (PDT)
Message-ID: <18e982cd-6dd9-71e9-331d-6f4078235c8f@linaro.org>
Date:   Tue, 25 Oct 2022 12:06:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 2/2] dt-bindings: pinctrl: add loongson2 pinctrl
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        zhanghongchen <zhanghongchen@loongson.cn>
References: <20221024014209.5327-1-zhuyinbo@loongson.cn>
 <20221024014209.5327-2-zhuyinbo@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024014209.5327-2-zhuyinbo@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/10/2022 21:42, Yinbo Zhu wrote:
> Add the loongson2 pinctrl binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> ---
> Change in v3:
> 		1. Drop the quotes in "pinctrl.yaml#".
> 		2. Remove the items in function node.
> 		3. Add requird node for "group" and "function" in properties.
> 
>  .../pinctrl/loongson,ls2k-pinctrl.yaml        | 129 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/loongson,ls2k-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/loongson,ls2k-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/loongson,ls2k-pinctrl.yaml
> new file mode 100644
> index 000000000000..6284359986de
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/loongson,ls2k-pinctrl.yaml
> @@ -0,0 +1,129 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/loongson,ls2k-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson2 SoC Pinctrl Controller
> +
> +maintainers:
> +  - zhanghongchen <zhanghongchen@loongson.cn>
> +  - Yinbo Zhu <zhuyinbo@loongson.cn>
> +
> +allOf:
> +  - $ref: pinctrl.yaml#
> +
> +properties:
> +  compatible:
> +    const: loongson,ls2k-pinctrl
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '-pins$':
> +    type: object
> +
> +    additionalProperties: false
> +
> +    patternProperties:
> +      'pinmux$':
> +        type: object
> +        description: node for pinctrl.
> +        $ref: pinmux-node.yaml#
> +
> +        unevaluatedProperties: false
> +
> +        properties:
> +          groups:
> +            description:
> +              One or more groups of pins to mux to a certain function
> +            items:
> +              enum: [gpio, sdio, can1, can0, pwm3, pwm2, pwm1, pwm0, i2c1, i2c0,
> +                     nand, sata_led, lio, i2s, hda, uart2, uart1, camera, dv01,
> +                     dvo0]
> +          function:
> +            description:
> +              The function that a group of pins is muxed to
> +            enum: [gpio, sdio, can1, can0, pwm3, pwm2, pwm1, pwm0, i2c1, i2c0,
> +                   nand, sata_led, lio, i2s, hda, uart2, uart1, camera, dv01,
> +                   dvo0]
> +
> +        dependencies:
> +          groups: [function]
> +          function: [groups]

Since you added them as required, drop dependencies.
> +
> +        required:
> +          - groups
> +          - function
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pctrl: pinctrl@1fe00420 {
> +        compatible = "loongson,ls2k-pinctrl";
> +        reg = <0x1fe00420 0x18>;
> +        sdio_pins_default: sdio-pins {
> +            sdio-pinmux {
> +                groups ="sdio";
> +                function ="sdio";

Missing spaces after '='. Applies in other places as well.


Best regards,
Krzysztof

