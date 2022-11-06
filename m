Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D93C861E277
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 14:56:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbiKFN4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 08:56:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbiKFN4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 08:56:48 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 844E362F4
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 05:56:47 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id d6so13482487lfs.10
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 05:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XNs/lw1mDF/pnPH5RjszupTI1jT0SmuXCXvtWwU1GjI=;
        b=ddNW9/UbnfxdoGSpies0Wcsv44GH0g4unfjXlXBLsNe9178AxmeCsM/P7RMTVLeFrT
         0oYb5QQGoCl1DsUTbuQGdeu22YIEfhTgTGrg+GCa5FEh+CNsa7y78khdRLgUrXEh92DA
         NAsTlPefmEn3GdB5SbRbelLZHH60iWKlqfZbJfG2MXMJ95bOsItT+QodyBXWx8/M7nMq
         ST4fgxfEgr6O46IPzDnxdHxzZBQrV6GFd5n9t2V+i1P8ci8G1wTCUWMsfFj/IsEH3kCJ
         eOSEYu8HHJpYYScL6tFTJqUxE4S9YLaVS1P1ioJYqjkUErgimaJzZChuQzBONED7iyT0
         RMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XNs/lw1mDF/pnPH5RjszupTI1jT0SmuXCXvtWwU1GjI=;
        b=7bFQHTuXwhDmKFEC+I+KrDEPCcXSdBMglxNQw5mWk5BvZAm/EUVIdschHZIL+7MP5x
         jX1505ZkeCEHS7CwK4Grw18xLP4C3TBwLMPHZI5UAeA+lWEZiwUBmBGU4GGGAeiPxuZu
         xHBqTupGYzXU1794iRGbySZ1rKi6MK46URrowdFu2+lsycmyQc0wu0IbBxednUyBJsP2
         HqG8UgeKjm4cZqGJ15praT3zUc9ck4CLqhgC9Zu5zZ638k0777N0tUgTps3ljWnybqOO
         cdwbrOLDsMTreaR7vqOnF+yY40+52hVkNB7aDkge/ss1i61JFLD4536JmyigmGCp2P92
         zoIQ==
X-Gm-Message-State: ACrzQf0qj6kFod1WEYnjhKcbjqOZzp1Vxm9lHSTxLCc1NwI3uZyDiMol
        ds1jeNSZwKF0w0esl80TpEPo7Ko74lTOSQ==
X-Google-Smtp-Source: AMsMyM625DemGXgAR8NK5oYtryD50FZ4W/nEN1vOGGIVolYzOENYcq+ghs9jtGO+2FVFGA2giSu6rQ==
X-Received: by 2002:a05:6512:1504:b0:4ab:1e2d:c8df with SMTP id bq4-20020a056512150400b004ab1e2dc8dfmr17332858lfb.480.1667743005893;
        Sun, 06 Nov 2022 05:56:45 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s29-20020a05651c201d00b0026e90b478c6sm693766ljo.114.2022.11.06.05.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 05:56:45 -0800 (PST)
Message-ID: <ec1416cd-ab5d-9813-acce-62c47f6d4c57@linaro.org>
Date:   Sun, 6 Nov 2022 14:56:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [RFC][PATCH v3 2/3] dt-bindings: imx6q-pcie: Handle various PD
 configurations
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221104170417.232132-1-marex@denx.de>
 <20221104170417.232132-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104170417.232132-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 18:04, Marek Vasut wrote:
> The i.MX SoCs have various power domain configurations routed into
> the PCIe IP. MX6SX is the only one which contains 2 domains and also
> uses power-domain-names. MX6QDL do not use any domains. All the rest
> uses one domain and does not use power-domain-names anymore.
> 
> Document all those configurations in the DT binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Keep the power-domains description in the main section
> V3: - Move power-domains back where they were originally (fixes V2)
>     - Do not use else: in allOf section
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 31 ++++++++++++++++++-
>  1 file changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 44c65d3ec07b9..5d731aca34b4d 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -67,13 +67,13 @@ properties:
>        required properties for imx7d-pcie and imx8mq-pcie.
>  
>    power-domains:
> +    minItems: 1
>      items:
>        - description: The phandle pointing to the DISPLAY domain for
>            imx6sx-pcie, to PCIE_PHY power domain for imx7d-pcie and
>            imx8mq-pcie.
>        - description: The phandle pointing to the PCIE_PHY power domains
>            for imx6sx-pcie.
> -
>    power-domain-names:
>      items:
>        - const: pcie
> @@ -222,6 +222,35 @@ allOf:
>              - const: pcie_bus
>              - const: pcie_aux
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-pcie
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 2
> +          maxItems: 2
> +        power-domain-names:
> +          minItems: 2
> +          maxItems: 2
> +
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - fsl,imx6q-pcie
> +                - fsl,imx6qp-pcie

This is confusing... your previous entry fsl,imx6sx-pcie falls into this
one, because it is a if-not-then.

This also does not really match your commit msg.

> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 1

Drop minItems, it cannot be less than 1.

> +          maxItems: 1
> +        power-domain-names: false
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/imx6qdl-clock.h>

Best regards,
Krzysztof

