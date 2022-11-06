Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EA6C61E274
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 14:53:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiKFNxc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 08:53:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbiKFNxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 08:53:31 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9F676165
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 05:53:29 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id t10so12664696ljj.0
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 05:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2cnDlppD3i0uSatCyDDptBzlNDRCuN1YuybmmTGxctQ=;
        b=NWunwtYcVa/HLP72iyuFzgYdYF0653CJcQ/issiTivZd/W2sg1/ScEjDIgGVPawwo8
         G5+p8WLh9kDaJ2zAh/UYnKjjIgLTY/xMRd4Vveou54jrj1Gq+SAwklkL2aYOpnAlGs0B
         317Eekk4MzIovzcoojTaWPzAAaSeqWSZmVVB94Ra+O+7n4SnMbi6emCpxl5vfVB2vdvw
         de8OMSGliDkXzklZfHhRG2ERrYj8q/0/9PEXr40ol4qAHnLCzuZYtYOAeAW6OaPK+jzA
         v783XteLbSWjzUgr5BjT2H7pprW6BwqqCto5rvaOnwxCZcowlGsQbqqOqi/4I3w0w2Qz
         eBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2cnDlppD3i0uSatCyDDptBzlNDRCuN1YuybmmTGxctQ=;
        b=33C9tjXh3yzrPYocddJJSL5xX6yHONhEUsF0GEqLEbiQx3t2t6UaTExjHRowxZmDlz
         BfBKQh58xjqDwwhy6UdnfhVEbKNk/ATblkN9a4ncMhJXI2uw1UtSIvPOb3i/bGtRrA9j
         DLRhK2W2bJ89HzWfLUb5KTuyCmOWOgGBnT4AHdXDAqKFNMmJk6LW5OjrPivv4tWH00FE
         EzvRkcjzfmU9XgFzfaLyV9SjCmW0v/cQO390YMetiIJ6+H95otjDNFiZ9nwiL3BiBbOl
         UFx3HuDwBPy6zDvzFO0vt5vWzKXmK8+M0xF6Zz2cf34WMSBZLwQwlroMioAF87WlNUK3
         aKkA==
X-Gm-Message-State: ACrzQf0ZkF0KmOGgBVTMs2/tWzE8BZNi8s2onyt1ykeJ8ixf0peqPVoW
        1l9sFGeVjjQ+lZgLWs6CbfbxPA==
X-Google-Smtp-Source: AMsMyM6WSZlMTqne3yjkoU4CO8zs1Gdaw+pRFp5QcERTGqnyVGiYbyFE36pIoRhz9sak/xVYhqBO0Q==
X-Received: by 2002:a2e:808a:0:b0:277:de3:ae34 with SMTP id i10-20020a2e808a000000b002770de3ae34mr15512438ljg.422.1667742808250;
        Sun, 06 Nov 2022 05:53:28 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s16-20020ac24650000000b0049aa20af00fsm710134lfo.21.2022.11.06.05.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 05:53:27 -0800 (PST)
Message-ID: <dca912d1-8162-a342-cd03-7d7505ce4f79@linaro.org>
Date:   Sun, 6 Nov 2022 14:53:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [RFC][PATCH v3 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221104170417.232132-1-marex@denx.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104170417.232132-1-marex@denx.de>
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
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux
> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
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
> V2: - Add AB from Alex
> V3: - Duplicate clock-names maxItems to mx6sx and mx8mq compatibles
>     - Flatten the if-else structure
>     - The validation no longer works and introduces errors like these:
>       arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: clock-names:2: 'pcie_phy' was expected
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 55 +++++++++++++++++--
>  1 file changed, 50 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 376e739bcad40..44c65d3ec07b9 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -14,9 +14,6 @@ description: |+
>    This PCIe host controller is based on the Synopsys DesignWare PCIe IP
>    and thus inherits all the common properties defined in snps,dw-pcie.yaml.
>  
> -allOf:
> -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> -
>  properties:
>    compatible:
>      enum:
> @@ -56,12 +53,10 @@ properties:
>            imx8mq-pcie.
>  
>    clock-names:
> -    minItems: 3

Why removing this and keeping it in clocks? They must be matching each
other.

>      items:
>        - const: pcie
>        - const: pcie_bus
>        - const: pcie_phy
> -      - const: pcie_inbound_axi for imx6sx-pcie, pcie_aux for imx8mq-pcie

It's now a bit confusing - you have different items and constraints in
top-level clock-names than in if-else for specific variants.

The usual convention for this is:
1. in top-level properties add clocks and clock-names with minItems and
maxItems matching the widest possibility
2. In allOf:if:then you narrow them - with "items" or maxItems.

Your setup probably works but it is confusing. Plus I am not sure if the
names mentioned in top level clock-names are applicable now to anything...


Best regards,
Krzysztof

