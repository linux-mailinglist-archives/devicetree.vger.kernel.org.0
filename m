Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC44621BAF
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:17:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbiKHSRr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:17:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234316AbiKHSRq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:17:46 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D23A9E019
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:17:44 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id j4so22431304lfk.0
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eF0NoynnXU1mUZn32g6a4hJPao05XEGPq4eBKljsqUg=;
        b=DYf8FJkzMrPTjVH3rv5zmefHArrg0ZNH+t9C+WLdUZsOukETCYBRWf1UghtbgDnGRY
         1XSzqgAKGOgP1gOD7ebx9Wm1GmDaoEVOvzeFE8bm45gthzO0/7MNNJFxegHzGfGzkDw7
         aL4ZLi2zMwOd5DGjwW7jwE+B2Z2eUTjqx3oeZbFkZhtjVLU2UA7DD0rhS26jTgGhtRXc
         IExXOZjHlONGL8Ph/BWwvWvy/doYdmVM0lUwoqosREtK9Y5eeN/DkPFDr4l+Mwe+OvfA
         JCtwfcbETASZmm/l/Pzx3+l1V4sdFLe+6bxDvIE/9e6mitIJEklS3gpOa+nZU0a9Cpn/
         3F6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eF0NoynnXU1mUZn32g6a4hJPao05XEGPq4eBKljsqUg=;
        b=HWUEhQqH5UpEi1ITIXUQIIYVYtqoh3J4Dj2XLdPdj9BnJFX4XMfWW4wGK560BY57w1
         IFyAPVW/dvLoZsMQPxqS6EVAgNnCrxMEC6xCHvUp0UO5vvQj0KtpgfO90hlN1VyagEdR
         LFR0+msk+kFW0AWTgvPLvn9ueUQOTXxpJXhZ4ghb+K+hor8FsrfR4MAvBIgGvUvCdxi0
         sKUCY1ISy6THEx02CVVUueAZAMlaPjDZPsyAbDU1//PsNd3uHNl4pyf8VDqNIKRXHDqT
         OL52myXPklszVYMpsmp2ZNDXU+O6n2/NfU7CnDRJK2Z5lSqHNj1rN8RR27xnvlqG9Fqi
         GVGA==
X-Gm-Message-State: ACrzQf16RF7yOPVJN39nPheqW3in3gCM8d+bN74zsP1DODziyDwFb6QM
        l+mqj4JVr0LrOjzgdXmzeKp+mg==
X-Google-Smtp-Source: AMsMyM6X/pC8+9dQXzESm23yahRPyFjiC9r4aLcQNqgDjgAU17WfDbIcUTRrE8t2cclvf+Oc18pMRw==
X-Received: by 2002:ac2:4e43:0:b0:4b2:3b4:1a44 with SMTP id f3-20020ac24e43000000b004b203b41a44mr6775333lfr.504.1667931463170;
        Tue, 08 Nov 2022 10:17:43 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0049735cec78dsm1881531lfq.67.2022.11.08.10.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:17:42 -0800 (PST)
Message-ID: <036f8d77-864e-76f5-613f-59b971e4a4ed@linaro.org>
Date:   Tue, 8 Nov 2022 19:17:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 3/3] dt-bindings: imx6q-pcie: Handle more resets on
 legacy platforms
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
References: <20221106222524.223188-1-marex@denx.de>
 <20221106222524.223188-3-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221106222524.223188-3-marex@denx.de>
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

On 06/11/2022 23:25, Marek Vasut wrote:
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
> V4: - Reinstate reset minItems and maxItems
>     - Turn the first two reset-names items into enums to cover all
>       the various name combinations, sort the rest in allOf section
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 34 +++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index b14c12a47cc1c..46fc29384ed34 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -84,14 +84,16 @@ properties:
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
> -      - const: pciephy
> -      - const: apps
> +      - enum: [ pciephy, apps ]
> +      - enum: [ apps, turnoff ]
>        - const: turnoff

I would expect to remove all these entries. I asked to keep reset-names
with minIetms and maxItems. It works fine with your approach, but why
having the items in multiple places?

Best regards,
Krzysztof

