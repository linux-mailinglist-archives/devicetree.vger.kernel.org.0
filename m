Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D662F6E2243
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 13:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjDNLeL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 07:34:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbjDNLeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 07:34:10 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBA778A5A
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:34:07 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id xi5so44765144ejb.13
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681472046; x=1684064046;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kDywA5nzzG8PDOGzLd47TShAUBCkfpN1bPDv+Nlseqw=;
        b=wE9RKmde+wKXtU9MTYLEOct8qq+bULIWhBM1+kFiAIbN1E9xG98wmd8oovOFhJG7Gx
         IpKjSq81+inoRgM8PzR3CKWJmq2djz5y/R2B7uvdk3MZphQtQkarM1oma1fbWQ7Nnnm/
         VuknmubBBwri1AuAabd58qP5lDSEGyQjPo00KXLmBAzUMal3bEDiiMo2nD2YCVSNXEcz
         jVkOpD7DR4W66VRmnScecowcKspnaPbieGDHE2+R44/kodoI9qrwEq62Y/5aj9vPXxSv
         vKtR5oY7ob34ESDJv3DnVU9ehqPma2a7o0//W30kMibsCY/6aEPjfrFeEpHPDY/o/Yd6
         KOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681472046; x=1684064046;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kDywA5nzzG8PDOGzLd47TShAUBCkfpN1bPDv+Nlseqw=;
        b=C0nRaZKFzBu/qY/g9nR/vextzwejbBCRD1g+ih9wHD5z5K9uK4BDVtohiwuuFt8HGA
         q4IYNEeqQzZIuaP5PTZPihM6qlk55f59S8tRkaGOcxnT+czWOahMe4FtenVDsf5cJi6D
         bKBhH6GEuvVbQ2hkV9fS4N5v+7X0W2SlRWUaOThn19eo6lLdh7SelMafTKPAGKRz0gXK
         cXxc8sMNbRswzLRcibQuiT56xRtLqHMKLX8zpPlt+entLoFHC3aoTj5gKExGxFrI4WYT
         DgsLZX6Lad0J5drK3UjRTkn3kX3T6X+ZQ1xgJ2whCI0TfAwEDaek/xj+zlh1aOcmeSsE
         GyDg==
X-Gm-Message-State: AAQBX9cw4IAd18HNTvF4Y50rqQ5jWryFVqD8PJzr7KkY/WkCnl8v0jcP
        YttOkpwk3q3fr1osMxgj6+M4Nw==
X-Google-Smtp-Source: AKy350bVUcMD2xiF/UPxET7fTfTpqmeEmoLJaQoPunlHOEJC91LnySQ96kFCTSNklJgkGDOUqrQEMA==
X-Received: by 2002:a17:906:3a05:b0:92f:f655:cc78 with SMTP id z5-20020a1709063a0500b0092ff655cc78mr5411666eje.53.1681472046353;
        Fri, 14 Apr 2023 04:34:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id x6-20020a170906b08600b0094e6db4d4a1sm2313659ejy.186.2023.04.14.04.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:34:05 -0700 (PDT)
Message-ID: <f7b35807-3d3c-2b8e-d0f1-f94d6b390a85@linaro.org>
Date:   Fri, 14 Apr 2023 13:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 3/5] arm64: dts: ti: k3-j721e-som-p0: Add TP6594 family
 PMICs
Content-Language: en-US
To:     Esteban Blanc <eblanc@baylibre.com>, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        jneanne@baylibre.com, jpanis@baylibre.com, aseketeli@baylibre.com
References: <20230414112843.1358067-1-eblanc@baylibre.com>
 <20230414112843.1358067-4-eblanc@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414112843.1358067-4-eblanc@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 13:28, Esteban Blanc wrote:
> From: Jerome Neanne <jneanne@baylibre.com>
> 
> This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
> Theses devices provides regulators (bucks and LDOs), but also
> GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
> which monitors the SoC error output signal, and a PFSM
> (Pre-configurable Finite State Machine) which manages the
> operational modes of the PMIC.
> 
> Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
> Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi | 171 ++++++++++++++++++++
>  1 file changed, 171 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
> index e289d5b44356..a9511e82478a 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi
> @@ -150,6 +150,12 @@ J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
>  		>;
>  	};
>  
> +	pmic_irq_pins_default: pmic-irq-pins-default {
> +		pinctrl-single,pins = <
> +			J721E_WKUP_IOPAD(0xd4, PIN_INPUT, 7) /* (G26) WKUP_GPIO0_9 */
> +		>;
> +	};
> +
>  	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
>  		pinctrl-single,pins = <
>  			J721E_WKUP_IOPAD(0x0000, PIN_OUTPUT, 0) /* MCU_OSPI0_CLK */
> @@ -308,3 +314,168 @@ &c71_0 {
>  	memory-region = <&c71_0_dma_memory_region>,
>  			<&c71_0_memory_region>;
>  };
> +
> +&wkup_i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&wkup_i2c0_pins_default>;
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	tps659413: tps659413@48 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Same everywhere else.

Best regards,
Krzysztof

