Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 661DC6E224A
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 13:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbjDNLe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 07:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbjDNLew (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 07:34:52 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28B8AA5EC
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:34:38 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50489b16e6aso4125817a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681472076; x=1684064076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0e9kd6pKKBCfzANb3bP++6hNsFHeunYfpnAt2gr2Tmk=;
        b=R8sjLeZBYtZLlZ/cu3LzMylLDp97oX+tv5naICzsSHmhj5dxyzEe1ps3M8y2XGZWaM
         GtlPWK1+0mX+Td0pUJFhTcXAlNxAMQc62u+7VXx8QbLaUh46nx5/MRbPkTt6M0e37G91
         m83Bql6/SjFPLnq/9W/UNh2RfI3qwe01nsNKZzdBbsAn3JRVydxtg2UaY0PpWDKiseA3
         9hmIdbKV9G2tf/vavulCVkBgWIm4Ij5dREKEmhpgeRNJgTal/i1Dk8of+2PtdrwCky1R
         Q2paixtAhl5VuBHOYn+NSG+qttib0qk3Zluy2po72aOrBRATha/ZvrGMypGG0d8BdF3W
         EWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681472076; x=1684064076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0e9kd6pKKBCfzANb3bP++6hNsFHeunYfpnAt2gr2Tmk=;
        b=lv2PT0gL8CzdLbHKXUjj1Z6PZIUKRvKAPP1dhkhIw1J9N7oHqUgOZr0crwkKYRXg26
         Xec2qiyEf0AntrejqsPO0Zxjz3TlXmIWnYs9Kq6ge3QZaIzL98vw1UJoGkYOx6PgvURA
         C/k/jIBB6KbEsRIpxWj6GIw+KTAYZHeaoi7nGhje0DR3DIcaZSw3KoFbJKNQAdbts2VF
         SJXNFOsR3lnta3oo+2yAZIyI1Ul4H603qm/BoW9pjf0hzfWAiQaQkSWIBrXUbAZklW0l
         JVOblexlDf46yJIbnfI5FGK54KJDpAQeTxT2y0JeAmCaDbDVO9oCT3wmZS/lNMo2cUgD
         +aJA==
X-Gm-Message-State: AAQBX9cJXD7P0pJhIBlx6P9idnwdsPql/0MvMAIVqJpzNrjViftb0maG
        /eTksSNrRByj7N8kcI2bZkAIew==
X-Google-Smtp-Source: AKy350baUfBg0BmY0YHy3GOK1Pbt8FOb6X6BiLxBO4K8Jw5C+3tJWFT1ldrLP9uOzy7YMDcUMWvepw==
X-Received: by 2002:aa7:c708:0:b0:504:7f63:1e3 with SMTP id i8-20020aa7c708000000b005047f6301e3mr6055089edq.11.1681472076590;
        Fri, 14 Apr 2023 04:34:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id u15-20020aa7d88f000000b005067d6b06efsm952507edq.17.2023.04.14.04.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:34:36 -0700 (PDT)
Message-ID: <89ea5baa-519d-8a1c-96ad-4da602383d5e@linaro.org>
Date:   Fri, 14 Apr 2023 13:34:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/5] arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family
 PMICs
Content-Language: en-US
To:     Esteban Blanc <eblanc@baylibre.com>, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        jneanne@baylibre.com, jpanis@baylibre.com, aseketeli@baylibre.com
References: <20230414112843.1358067-1-eblanc@baylibre.com>
 <20230414112843.1358067-2-eblanc@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414112843.1358067-2-eblanc@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 13:28, Esteban Blanc wrote:
> This patch adds support for TPS6594 PMIC family on wakup I2C0 bus.
> Theses devices provides regulators (bucks and LDOs), but also
> GPIOs, a RTC, a watchdog, an ESM (Error Signal Monitor)
> which monitors the SoC error output signal, and a PFSM
> (Pre-configurable Finite State Machine) which manages the
> operational modes of the PMIC.
> 
> Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi | 175 ++++++++++++++++++++
>  1 file changed, 175 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> index fa44ed4c17d5..8458b7da068f 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> @@ -118,6 +118,25 @@ J721E_WKUP_IOPAD(0x0008, PIN_INPUT, 0)  /* MCU_OSPI0_DQS */
>  	};
>  };
>  
> +&wkup_pmx2 {
> +	/* wkup_pmx2 starts at 0x68 */
> +	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
> +		pinctrl-single,pins = <
> +			J721E_WKUP_IOPAD(0x98, PIN_INPUT_PULLUP, 0) /* (F20) WKUP_I2C0_SCL */
> +			J721E_WKUP_IOPAD(0x9c, PIN_INPUT_PULLUP, 0) /* (H21) WKUP_I2C0_SDA */
> +		>;
> +	};
> +};
> +
> +&wkup_pmx3 {
> +	/* wkup_pmx3 starts at 0x174 */
> +	pmic_irq_pins_default: pmic-irq-pins-default {
> +		pinctrl-single,pins = <
> +			J721E_WKUP_IOPAD(0x1c, PIN_INPUT, 7) /* (E18) WKUP_GPIO0_84 */
> +		>;
> +	};
> +};
> +
>  &main_pmx0 {
>  	main_i2c0_pins_default: main-i2c0-pins-default {
>  		pinctrl-single,pins = <
> @@ -231,3 +250,159 @@ flash@0 {
>  		cdns,read-delay = <4>;
>  	};
>  };
> +
> +&wkup_i2c0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&wkup_i2c0_pins_default>;
> +	clock-frequency = <400000>;
> +
> +	tps659414: tps659414@48 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "ti,tps6594-q1";
> +		reg = <0x48>;
> +		ti,primary-pmic;
> +		system-power-controller;

Other places and other patches have the same problems.

Best regards,
Krzysztof

