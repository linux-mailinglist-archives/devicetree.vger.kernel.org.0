Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D27FB731BF8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 16:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344074AbjFOO6j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 10:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241244AbjFOO63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 10:58:29 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC92F273D
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 07:58:27 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f62b512fe2so10920631e87.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 07:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686841106; x=1689433106;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VJ9ynKBRnWmDpkb98fhevLev870/kjy50alhP9fsq/8=;
        b=udcHcbZhpLbzXdMvbpPKX5Xp/FN3Xvs0oSAAUSCa2El4Qhrn+BjtGT2QR8ZcoxpiPg
         CCXBtdCXmjtYVBLJ4D7qNJw3fCo6NUf4ojRq0On6vOwYScaUKstfoP7VILA2zESIREiA
         UAeGY1/bNizxXNmwVF2sL2Mz9+sKB/wmlkvdodoKSeXDqM8PIdYE8LM+u23G9hhsqCuW
         8TOXU3qfGdQFuQxpF0iM3f5rVil5G2dIsq/T6cZ/F0+NTce22V6tKNXg79ew6SqMzPzQ
         NjGLu5L6H3JrbgoEQg1KQQ09yjrZvigU6pdTzF19nMDqW7jldtLzQD3AUTcvUgv4QbZr
         9anA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686841106; x=1689433106;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VJ9ynKBRnWmDpkb98fhevLev870/kjy50alhP9fsq/8=;
        b=T+sToCBEsmpBzJFRy3y3WtZi9/sF4S0XSZ6zhrcNV9CJpfCreII1zXRCgkCDLP9O5P
         J57GyoCTVytZxyjOisRze+1IwcvLb2TfAO9I+wErtsP3EbgctQKU+h7AC2pFJG3Y/Aw9
         7ra81gqA2LM2ImGt+t2Yvwm9rX34+RlOqP5nIPTnWRflJAHmn5qo0aj5dP6PrjqEajO1
         BHjysBp5b/Ca5mkWI0crAmNrguPAGwh7uYeB7Jt+qtmrPPlv+rVuYYcrPy4y4cMEsbSO
         rpx19Q2FXXnCxWpOT6yJNYNFa1D8tYWvoaCBYMPo3K9ex8GG/IhUH8vv5pKASwfSLpJO
         PzRg==
X-Gm-Message-State: AC+VfDwkWoS6tqdq1mY79wJIoTWq7MJdLsAIsHqqdQmiQuU2i7ylWAkD
        H+sQiBcB4Fdad2wakzK3MF9lug==
X-Google-Smtp-Source: ACHHUZ5QvTrGP83jsEwEryF0zv/zZgROBqTbmaovAyshVnwrrjiq7pHgtoBXpUXCvBYRem+liKUVAw==
X-Received: by 2002:a19:da01:0:b0:4f6:198d:2afc with SMTP id r1-20020a19da01000000b004f6198d2afcmr5638158lfg.37.1686841106003;
        Thu, 15 Jun 2023 07:58:26 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id t12-20020ac2548c000000b004eb4074f40fsm2596751lfk.241.2023.06.15.07.58.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 07:58:25 -0700 (PDT)
Message-ID: <db9a6c19-f28d-ce5e-fd47-04eda6da5a91@linaro.org>
Date:   Thu, 15 Jun 2023 16:58:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH V2 1/2] arm64: dts: qcom: ipq5332: enable GPIO based LEDs
 and Buttons
Content-Language: en-US
To:     Sridharan S N <quic_sridsn@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230615145311.2776-1-quic_sridsn@quicinc.com>
 <20230615145311.2776-2-quic_sridsn@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230615145311.2776-2-quic_sridsn@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.06.2023 16:53, Sridharan S N wrote:
> Add support for wlan-2g LED on GPIO 36 and wps buttons on GPIO 35.
> 
> Signed-off-by: Sridharan S N <quic_sridsn@quicinc.com>
> ---
This patch references a file that does not exist in -next and does
not state any dependency on other patches. With the hundreds of
emails flowing in daily, it's impossible to keep track of it.

For the patch contents, lgtm.

Konrad
> Changes in V2:
> 	- Updated commit message
> 
>  .../boot/dts/qcom/ipq5332-rdp-common.dtsi     | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
> index 97dc0e5c15f0..a8671a4ac2e4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
> @@ -19,6 +19,31 @@
>  	chosen {
>  		stdout-path = "serial0";
>  	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-0 = <&gpio_keys_default>;
> +		pinctrl-names = "default";
> +
> +		button-wps {
> +			label = "wps";
> +			linux,code = <KEY_WPS_BUTTON>;
> +			gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <60>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-0 = <&gpio_leds_default>;
> +		pinctrl-names = "default";
> +
> +		led-0 {
> +			gpios = <&tlmm 36 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "phy0tx";
> +			default-state = "off";
> +		};
> +	};
>  };
>  
>  &blsp1_i2c1 {
> @@ -52,6 +77,20 @@
>  /* PINCTRL */
>  
>  &tlmm {
> +	gpio_keys_default: gpio-keys-default-state {
> +		pins = "gpio35";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-up;
> +	};
> +
> +	gpio_leds_default: gpio-leds-default-state {
> +		pins = "gpio36";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-pull-down;
> +	};
> +
>  	i2c_1_pins: i2c-1-state {
>  		pins = "gpio29", "gpio30";
>  		function = "blsp1_i2c0";
