Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27EC740135
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 18:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232394AbjF0QcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 12:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232411AbjF0Qbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 12:31:45 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6342D3A96
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 09:31:26 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f96d680399so6602012e87.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 09:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687883484; x=1690475484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lgh9beB656iDmLAqhN13mc4F9+411kjxseQuAeu7g3o=;
        b=KqfOvumvy/F7/bdQBKXdk1w6Qr2YsYgjSa3B4QjasNnu3Yd3yB98TLuvsGTKpcL6zp
         D7zAbdpqffwZDLMRjVZm//kKQOY4A3u+vaorTqxUq0o1TNgIjvP1C4DE7L1NUR3i8rJX
         qmxFR8Cok0peTl18T4sNoVVhmxiTOD2ik4gqwDLFz9ZGS0XCO9ENn/wi+wibfcK0p0rp
         FgkQHrRmRi8E9BB2ofH8erGp8DzFeCCcx0nmcIgjkybUvtVHtFcfJpF90LpDyIQdRxDA
         lB/e5kEFsiKKz8ePQQJojPVUuKDgsbMKAc/0cOBboDL7p/HxIYP4qDKflehoXll4GjWr
         2rnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687883484; x=1690475484;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lgh9beB656iDmLAqhN13mc4F9+411kjxseQuAeu7g3o=;
        b=HheS2l8LD9lzxj8z7po0hstsDA+TIZgpWiJqeyPl4HqQbTBdOV6zJzBHyoJfm8HkkW
         ln0KV5xtd8nWKubE6Q/HwF4mx+rOkRPAre/VEkgEkf3WRmgokqqU+xzGKgXlCV+imZvs
         VUQ3e7xo/bT2LVvsqTbwM2GfFVsjY3sLqI5TQBR1X6URuNOczz7f48igPQ6Re1ivX+a6
         ZMzTHNdKw8YFIL6eDJS9nSTT7qW0n5ewyMYCX8eMcgVbotfi0I2QJSR9EUrutREpTzr5
         AYUnzP0RfaCxt5fPzXEAL9zmsueJqXb2rJyhU30QIkbyEvZL8vwsHDf0RnHBo7zipPFV
         CQyQ==
X-Gm-Message-State: AC+VfDwmO5HrYNtE6GJyRpuRsTGj9B+ww/89q/m7e2vJ0xt+CMVQ1WGh
        lZJwsxIfjPQ+exnLGnlJhx+dQg==
X-Google-Smtp-Source: ACHHUZ5ufqGnc7/JddNYcwk64Wcv7TwyzYwTcT6B+Ls+mzsePP1+9bs5IwVztI6Z2hgXZelUC80KdQ==
X-Received: by 2002:a05:6512:3a96:b0:4fb:7642:88d3 with SMTP id q22-20020a0565123a9600b004fb764288d3mr5570952lfu.27.1687883484384;
        Tue, 27 Jun 2023 09:31:24 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id t19-20020ac243b3000000b004fa4323ec97sm1440883lfl.301.2023.06.27.09.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 09:31:24 -0700 (PDT)
Message-ID: <8015cc96-af50-3365-9ba0-135773d301fb@linaro.org>
Date:   Tue, 27 Jun 2023 18:31:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/3] arm64: dts: qcom: c630: add panel bridge 1p2
 regulator
Content-Language: en-US
To:     Caleb Connolly <caleb.connolly@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230627-c630-uart-and-1p2-reg-v1-0-b48bfb47639b@linaro.org>
 <20230627-c630-uart-and-1p2-reg-v1-1-b48bfb47639b@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230627-c630-uart-and-1p2-reg-v1-1-b48bfb47639b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.06.2023 17:32, Caleb Connolly wrote:
> The VCC and VCCA supplies of the DSI<->eDP bridge are derived from
> vreg_l2a_1p2 and controlled by a GPIO on the PMIC. Add the regulator
> here so Linux can control it.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      | 30 ++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index 22a7d997cdb0..94e37e5d2177 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -80,6 +80,22 @@ adsp_mem: memory@8c600000 {
>  		};
>  	};
>  
> +	sw_edp_1p2: edp-1p2-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "sw_edp_1p2";
> +
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sw_edp_1p2_en>;
property
property-names

> +
> +		gpio = <&pm8998_gpios 9 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		vin-supply = <&vreg_l2a_1p2>;
> +	};
> +
>  	sn65dsi86_refclk: sn65dsi86-refclk {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
> @@ -425,6 +441,8 @@ sn65dsi86: bridge@2c {
>  
>  		enable-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
>  
> +		vcca-supply = <&sw_edp_1p2>;
> +		vcc-supply = <&sw_edp_1p2>;
>  		vpll-supply = <&vreg_l14a_1p88>;
>  		vccio-supply = <&vreg_l14a_1p88>;
>  
> @@ -500,6 +518,18 @@ &mss_pil {
>  	firmware-name = "qcom/sdm850/LENOVO/81JL/qcdsp1v2850.mbn", "qcom/sdm850/LENOVO/81JL/qcdsp2850.mbn";
>  };
>  
> +&pm8998_gpios {
> +	/* This pin is pulled down by a fixed resistor */
> +	sw_edp_1p2_en: pm8998-gpio9-state {
> +		pinconf {
drop pinconf{}, it's unnecessary

Konrad
> +			pins = "gpio9";
> +			function = "normal";
> +			bias-disable;
> +			qcom,drive-strength = <0>;
> +		};
> +	};
> +};
> +
>  &qup_i2c10_default {
>  	drive-strength = <2>;
>  	bias-disable;
> 
