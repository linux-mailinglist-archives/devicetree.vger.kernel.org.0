Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B4F361E27B
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 14:58:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbiKFN6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 08:58:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbiKFN6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 08:58:45 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86511641A
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 05:58:44 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id f37so13484865lfv.8
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 05:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fdb7B7utUoyHYUnF/OB/b9dKJ9b3VlE5v55UFPHvv6w=;
        b=g1w7SzlZy5FSjH9e7tFqK0hcNdRvFVQkRzIhMiUMbIx9OtDVkLdPcljJYfNLMhGXQc
         4m4bDgNYu2hdek2YE5vGNYFY5Omq9xj0hCk3iaE779G8w8LYBJ+21mdezoah8ChzYuqH
         ObDq5se3QVrTO3XlVDBoH+I1iMbcSrslsP/NKo6gnnd7oCwRof1JzLjj0gvLHxKNbFy5
         vAqzKDbjfuqCAy7jQwoxsY9h2GkOspprSfnjqkuilJSOMUjmmtfCUT8BwbaJO9VKWGxV
         ZwiKnDzC6XIL8flOGJFuUuYE3+DtRi7YKdwBPUG3YTMHKj6gghWH5tFclyiRFazePUqt
         payg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fdb7B7utUoyHYUnF/OB/b9dKJ9b3VlE5v55UFPHvv6w=;
        b=rwqgQGCkoPTIYhZcayJIOO/v8feAzInPe7elDxnJAUDSIAhkBInAhfSMNZB4j5wN/m
         Yix2oh2+eorjPwF5GZlhUx+vM8/N/bIzIfMLyy1QpI3Cm2mhAW23Kg94Ov+UZsMiQVUF
         PCxP2KVdf4RIgIDkdy1ULXZZVgcIGbwdwBKqe44694rE3PW4yeErSXh+axuxc4MPjhXB
         dWMTcC3++D6IQqQZVnJ5ts0JqgBEcjyy4IOOoKZO+sUxZid50n0ebm76s31Lrtl3vGvx
         yHdrZBZ186B5EbDX7LcOSLG72zJWHNiFqOASzusSq2fWuFhCl+CSOZ9FbIDsC6e0tDad
         4kBw==
X-Gm-Message-State: ANoB5pmHIUY3pH/CbguACy8KgB3L8zERCBIZ0V+ROAn344B2KKJ2rSbo
        NhfNVgKyNn+5t5s2GIG1XhZOog==
X-Google-Smtp-Source: AA0mqf5V2Z87IVcI67VNa+gl+LfZiquWAOzyHUg2SyOWfFSG/AlP/Nb0cZjKHiFh0ht2tbrjO/nkJw==
X-Received: by 2002:a05:6512:290:b0:4b2:ab2:a666 with SMTP id j16-20020a056512029000b004b20ab2a666mr3670152lfp.618.1667743122851;
        Sun, 06 Nov 2022 05:58:42 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s24-20020a056512203800b0048ad4c718f3sm713281lfs.30.2022.11.06.05.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 05:58:42 -0800 (PST)
Message-ID: <11c5aea8-bc31-c924-9f73-2138096c1bab@linaro.org>
Date:   Sun, 6 Nov 2022 14:58:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [RFC][PATCH v3 3/3] dt-bindings: imx6q-pcie: Handle more resets
 on legacy platforms
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
 <20221104170417.232132-3-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104170417.232132-3-marex@denx.de>
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
> The i.MX6 and i.MX7D does not use block controller to toggle PCIe
> reset, hence the PCIe DT description contains three reset entries
> on these older SoCs. Add this exception into the binding document.
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
> V2: - Add mx8mq to 3-reset PCIe core variant
>     - Handle the resets in allOf section
> V3: - Reinstate reset: maxItems:3 and add minItems:2
>     - Move reset-names back to main section
>     - The validation no longer works and introduces errors like these:
>       arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: reset-names:0: 'pciephy' was expected
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 5d731aca34b4d..44a1404cbc2c0 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -80,11 +80,13 @@ properties:
>        - const: pcie_phy
>  
>    resets:
> +    minItems: 2
>      maxItems: 3
>      description: Phandles to PCIe-related reset lines exposed by SRC
>        IP block. Additional required by imx7d-pcie and imx8mq-pcie.
>  
>    reset-names:
> +    minItems: 2
>      items:
>        - const: pciephy
>        - const: apps
> @@ -251,6 +253,29 @@ allOf:
>            maxItems: 1
>          power-domain-names: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6q-pcie
> +              - fsl,imx6sx-pcie
> +              - fsl,imx6qp-pcie
> +              - fsl,imx7d-pcie
> +              - fsl,imx8mq-pcie
> +    then:
> +      properties:
> +        reset-names:
> +          maxItems: 3

In your patch v2, for such case you explicitly set both minItems and
maxItems to the same value. Here you do not. Let's keep both min and max.


Best regards,
Krzysztof

