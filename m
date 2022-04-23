Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63DC750C929
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 12:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234270AbiDWKUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 06:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231953AbiDWKU3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 06:20:29 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443191B5BC5
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:17:32 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id bv19so20733969ejb.6
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Mklb5aXcxYipDAFtZhLjAH2YhDWDlT80DvRI+nyyIRY=;
        b=IL7auybyir92nS7ynxcqpLhd4/Afr9KHN3opym3dFVqZqdIvG6G5WeaQeNSrud2jLf
         YOmvQQC1Yjzd1BZ8hU14kf+Y5QZSBAbwzPgtOlJ0UhBEVdleQoNRNuXAqoeHXJbhRgxT
         xLFvi5JZAMDlHBDAMiQqc9nnCF3YsHuZJskjGxq/dwzeMZzqJz+sjIspuHo/FO+yzZdn
         1qftw1eWzxJw29oQvdL2nyHhuWSHuTaPqcznuTD0yTGGaXaha/oyQOFdDrt+X3K+tc4+
         s8bLGGoQfRmv4426NZah/AATrSZpWe6rxBVbtrG3FZxHOCXznGFXmxd6XUxG1o22XBU3
         bRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Mklb5aXcxYipDAFtZhLjAH2YhDWDlT80DvRI+nyyIRY=;
        b=GKLQbJk0aWrJMVOUfoPT2czbDmpdzrrYpTrwMyZ5fYX+D3x22v2GHm3cIztfl+jq8U
         8h9/4vb7s8jddX0aJyeM7H9Wddbo6PY1LhvznByPFNn3RKj1tC1AtHiZyPb995Z0dkUx
         QON0gKUCDcLqx0AV7dTaRWUGEZjoqqkcd+0BHI086kWp4om5H1G+DdnkDik/Xw66U5ws
         8/kkqrv3byAkePAVIKGAXSrZ7zEPIGdZebOPavZk+F7/zS3V3pSEZwjyhtQv1fAP2mAI
         ljI92RALb9wD7iEdGux1xewNiwYhmvHwXzMtGbGwg33vIlugnHWIPY5r1fiwX7c4+e2X
         u/JA==
X-Gm-Message-State: AOAM5331HKMwDt0Zaw1/wndeft7UFFriLQbCd4yAsVUdzJZupG0Ng2i0
        iPoumO4jQWFwwoSXRob+fq6p4w==
X-Google-Smtp-Source: ABdhPJxnYTs0tniLxFUdD7NtLPSv45OL0EoKnxDQUZGPp9FZgg1EzeCxUp68BDPozKySpPgos26AyQ==
X-Received: by 2002:a17:907:7e8b:b0:6f3:78f1:80b0 with SMTP id qb11-20020a1709077e8b00b006f378f180b0mr985409ejc.596.1650709050883;
        Sat, 23 Apr 2022 03:17:30 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gq5-20020a170906e24500b006e87644f2f7sm1544023ejb.38.2022.04.23.03.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 03:17:30 -0700 (PDT)
Message-ID: <fb8c2c57-38bf-065f-a781-beb2fb89353e@linaro.org>
Date:   Sat, 23 Apr 2022 12:17:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: fsl: convert fsl,layerscape-scfg to YAML
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220421153115.3496834-1-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421153115.3496834-1-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 17:31, Michael Walle wrote:
> Convert the fsl,layerscape-scfg binding to the new YAML format.
> 
> Added, compared to the original binding, is the interrupt-controller
> subnode as used in arch/arm/boot/dts/ls1021a.dtsi as well as the
> litte-endian and big-endian properties.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  .../arm/freescale/fsl,layerscape-scfg.txt     | 19 ------
>  .../arm/freescale/fsl,layerscape-scfg.yaml    | 58 +++++++++++++++++++
>  2 files changed, 58 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,layerscape-scfg.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,layerscape-scfg.yaml

This should be moved to bindings/soc/freescale. Arm directory is only
for top-level stuff.

(...)

> +description: |
> +  SCFG is the supplemental configuration unit, that provides SoC specific
> +  configuration and status registers for the chip. Such as getting PEX port
> +  status.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,ls1012a-scfg
> +          - fsl,ls1021a-scfg
> +          - fsl,ls1028a-scfg
> +          - fsl,ls1043a-scfg
> +          - fsl,ls1046a-scfg
> +      - const: syscon

This was not present in old bindings, so please mention it in commit msg.

> +
> +  reg:
> +    maxItems: 1
> +
> +  little-endian: true
> +  big-endian: true
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
> +  "^interrupt-controller@[a-z0-9]+$":
> +    $ref: /schemas/interrupt-controller.yaml#

Do you have a specific FSL schema (bindings) for the child?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    scfg@1570000 {

Generic node name, so I guess here it would be a "syscon".

> +        compatible = "fsl,ls1021a-scfg", "syscon";
> +        reg = <0x1570000 0x10000>;
> +    };


Best regards,
Krzysztof
