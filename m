Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3F72707AC4
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 09:22:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbjERHWE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 03:22:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbjERHWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 03:22:03 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 739B2F5
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:22:02 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-965ab8ed1fcso298863166b.2
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684394521; x=1686986521;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LVNZ7OsxHC4gUc1HBuftEfiiX8TxJ2P+H7Uxh/eBask=;
        b=FWkVqL9dA0gvUjrHLqN0mU3HpTh6X7Q5XCAi2QlYblTtFRgboiwiQl1InW7OhNDLhP
         BKUl5d1qCKw4uejnNmwLcTSykQw7Lc8C+8F8EAnhNRXTNT3xB4Y5zL6eukxJOa5Bxcdx
         9QUiVp5BL27WIy43I8nf9IR1dqKyAuk8ipEV8va/35fPcFWOLTdUgYyDMWcm+uVNzPYH
         mIaILymrcEb8vJADiN/IPJXmq2A09lZVOHCeGgy0swMMSvfQpUHXUsdtWI1o6/ZCRnVi
         +2OvJDy6rFWbyjda0UKNXJNPQQqY8yf+UR/bKatPlszJnicobr6fdnL2YIH6i8LS+ixR
         4gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684394521; x=1686986521;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LVNZ7OsxHC4gUc1HBuftEfiiX8TxJ2P+H7Uxh/eBask=;
        b=Pzd6ROD4UzGgvR8DDGX04/b2gFd6a4dzfBiJ6HdtAid1v5D+yc3mUA9XXJZ8XbapTJ
         x/Gf91CaXnYrSs88lBs3MBBStU+XyPoKdFjesYy8vFzVBBj41igXz2XPlX5sdRz0snv1
         YN5XDmENcMXFHYFDGm79xHjUl+rHrCch9rGolXDJLcPCHJHlgVu73xCXasR1+uCaFYI7
         UtZ9ZWBL247vTkd7Wz8Cx+jN9o1tHQk3sDMTsDtuAZVOUsZ6OklAenN2L2zhwFu6Ia7o
         R1nEhrbXja+bYCfVGPy0EeJfTVPrUMBb3nqaEa/BxdDJi08q1GB3U1N1dZyb7aMgDvDS
         wRHA==
X-Gm-Message-State: AC+VfDzGuOmyTfHMPjD/860bQbwoN2Fg+mPBJS8BCowuxWQz1Q64tf/7
        xB5dxZf9uucO2cUHAkPQtlB0pQ==
X-Google-Smtp-Source: ACHHUZ5sC11r+WEDSUCUYMsSws1Aqp7yyvv3gEonG7zYrUmM550pAcT6ajTIPxhcuYA4laNdqiQH1Q==
X-Received: by 2002:a17:906:fd8c:b0:953:3e29:f35c with SMTP id xa12-20020a170906fd8c00b009533e29f35cmr36006806ejb.45.1684394520824;
        Thu, 18 May 2023 00:22:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a2b:c408:5834:f48e? ([2a02:810d:15c0:828:a2b:c408:5834:f48e])
        by smtp.gmail.com with ESMTPSA id li18-20020a170906f99200b0096a6bf89259sm577404ejb.167.2023.05.18.00.21.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 00:22:00 -0700 (PDT)
Message-ID: <24fbf72b-1e1c-1145-142b-518901869ea1@linaro.org>
Date:   Thu, 18 May 2023 09:21:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: imx6sx: Add LDB support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230517210210.12183-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517210210.12183-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 23:02, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has an LVDS controller that is connected to the eLCDIF.
> 
> Add support for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/imx6sx.dtsi | 41 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 4233943a1cca..7a8a00d81666 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -843,8 +843,39 @@ iomuxc: pinctrl@20e0000 {
>  
>  			gpr: iomuxc-gpr@20e4000 {
>  				compatible = "fsl,imx6sx-iomuxc-gpr",
> -					     "fsl,imx6q-iomuxc-gpr", "syscon";
> +					     "fsl,imx6q-iomuxc-gpr", "simple-bus", "syscon";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
>  				reg = <0x020e4000 0x4000>;

It's a GPR, not a simple-bus. If you have here 'reg' then it is not
simple-bus.

Best regards,
Krzysztof

