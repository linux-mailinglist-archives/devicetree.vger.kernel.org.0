Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE825622AD
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235972AbiF3TLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236557AbiF3TLW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:11:22 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3F728E30
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:11:22 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id ge10so40841575ejb.7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gGOkz73yOvsR7ROa6eT8waLeISnVoeBWcdAeZ+UARHg=;
        b=jViOMrmg9rqLEPftQV8B9iQ4EBjExfliNu4dpVafnW+egbrQtnlTHyQ81KnYWvI6zI
         ddtlXcDT8xGO/QBxNBxsAY8r6KgZ3u3Xpm3lMzzfw00fTkbfXvrJYK7r+Vl6jP7JkQdG
         7PaqjV0lCrr5PTUg7PE0VYWoNtI9W1gj8urxI04vGfjZAzUKR4GtV04vnzXUJEQgMXob
         iir5mLuk0CQJvC2sAEijm+Km3jw1h/QloE1FS/HxcwjE/PeCYuRDxEEstfgayZrvlDsC
         zWRPylnNgVYbyfwfpcuZ2NxlqHTptCIXYVq80q0vRLlAUdv+WIOqH2a+0L3uF7HK6BUJ
         kUYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gGOkz73yOvsR7ROa6eT8waLeISnVoeBWcdAeZ+UARHg=;
        b=t3huuQSBtl7AycxWKWi86VOLKIFoSdZqUQjHKT6Hvwi0tiddrR2nLebWz2qnTnbiD0
         xxnY/Qyt1dljc3AD6lPXA/dm2M5CwnbWA8ZOjFqo+0fNw9fpDVIBWdd4psTBdq/ihSTf
         XBRXcZtYjmI0O8Sf+z52tynvkqr4UrfGP9k2POKWT51FmVuvqifEMC67yYmty0lXSYea
         Z6JLHsvBTW06NPqbyC96i84jPoyhs/Rmfh7zSx17JsZodoHYOcSaNjBlKyM1Z0NnjTQO
         r0SGXtlRGpJcJwWdZrKDz4B5mtAO2o2+Aooyw/WWsX5by+s0QCqx+WYOn7G00+NdkC6r
         GOEw==
X-Gm-Message-State: AJIora88oE1WJ9S9U7LeXALWj9FtpFiXpV6RfuQQLsWbcQ+jciLW9w1d
        3gcDQGWGtTLIfoaTJwTzaOe+Fw==
X-Google-Smtp-Source: AGRyM1tDzBRGuT3ZBUWO2HoQSWn1GShg2X4l6nwq4Aq3j5FOKQadh8Jnggo5mSJcsW1WpT/iFPcRYg==
X-Received: by 2002:a17:907:72c4:b0:726:9406:f760 with SMTP id du4-20020a17090772c400b007269406f760mr10179197ejc.247.1656616280628;
        Thu, 30 Jun 2022 12:11:20 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kl2-20020a170907994200b00722d5b26ecesm9566679ejc.205.2022.06.30.12.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:11:19 -0700 (PDT)
Message-ID: <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
Date:   Thu, 30 Jun 2022 21:11:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630173922.92296-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 19:39, Marek Vasut wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must be compatible with
> simple-mfd in addition to the existing compatibles.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 54 ++++++++++++++++++-
>  1 file changed, 53 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index b246d8386ba4a..05a19d3229830 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -18,11 +18,18 @@ properties:
>    compatible:
>      items:
>        - const: fsl,imx8mp-media-blk-ctrl
> +      - const: simple-mfd

Not really... simple-mfd means devices is really simple and you just use
it to instantiate children. However this is not simple - it's a power
domain controller with several clocks and power domains as input.

It's not a simple MFD, but a regular device.

>        - const: syscon
>  
>    reg:
>      maxItems: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
>    '#power-domain-cells':
>      const: 1
>  
> @@ -64,9 +71,16 @@ properties:
>        - const: isp
>        - const: phy
>  
> +  bridge@5c:
> +    type: object
> +    $ref: "/schemas/display/bridge/fsl,ldb.yaml#"

Skip the quotes, especially that it's inconsistent with others (').

> +    unevaluatedProperties: false
> +



Best regards,
Krzysztof
