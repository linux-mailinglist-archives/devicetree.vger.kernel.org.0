Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2886FC213
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 10:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233968AbjEIIwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 04:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234156AbjEIIwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 04:52:46 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E4EA10D4
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 01:52:43 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ac87e7806aso48489471fa.3
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 01:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683622362; x=1686214362;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SDM5X5syyZlQxNYvma9nlYTvbUKCE13McL+6TrtxYrA=;
        b=YMEg2MfkllWSMYUAHU5DOH9vEH6Sd1R93eO4E2SvkTea7D28Rn+Wz17RW7ht0Z2hqt
         toZwHJVjFPqsMHuWQ4kLcKZknOJhnUyyKOwY66Im3EMlEUdx44qGdmr+P5lyn/RXzYS7
         vxVuwkmXth0KnUuE/aYSrWgJ8oAc/SLjiyd5TC7xmlOU6woMXq9h333LSwY4WQm6K1Mg
         oBV5al6lUtJ5066smw2HxwaNEptMEZjloknQZxfRVc0xjklgUQ/KreQmvQMlDeuAn7pc
         5WJZaTue2FCTUV3xI84S4gBalCRGSM/kjrTykk4WBYPxGfbgn/Qb6DEPMK6dzWYPjkw3
         RreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683622362; x=1686214362;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SDM5X5syyZlQxNYvma9nlYTvbUKCE13McL+6TrtxYrA=;
        b=fcCPbjI5H2QHg1JxfbXJkPydDI2g5n4KZsZpm03+RH3+L4QgDCco4Y65VFpxQAo9iZ
         TPP1lLQ2pGpnKq57VpDn+CII2X+wRMAOYfCZppCDAlu1rAnwDn9o5ZIe5TA2NLviLQRH
         rMTNisISrGr5uQdotiA1u8rGgdGPqGWAsZoUaSbig4e8NOcfNHUhtkp7DlRirRfu+5J4
         wH3/6F8CHT5vNZef/Rpg3Wvt45rLaDG9KrRvV2dRdH3TYqSIvzMsb2WFD9Qm+M98vA9+
         xGHQYRRABpR0qxj0ujEindas43LKacc8KXxqFhKIbYZVVEWDvtjPKTJDelOnNfYkwHdc
         4Alg==
X-Gm-Message-State: AC+VfDymI8vC+cDVnxFtXO3+urVQNh3hPcGOpSwpLZwzXHiPLdpKQzF3
        agceS+5pAl+k4UDnoCuBTEdrpg==
X-Google-Smtp-Source: ACHHUZ4gfef1Jx/WsxrfHxwFASMwhHlSpmm6Zxqg6T49Je95GVkXALxlxckzFFu2R0k+TUqCBldNYA==
X-Received: by 2002:a2e:8695:0:b0:2ad:90c9:bd29 with SMTP id l21-20020a2e8695000000b002ad90c9bd29mr578637lji.18.1683622361851;
        Tue, 09 May 2023 01:52:41 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id d12-20020a2e928c000000b002a93e0605ebsm1487823ljh.8.2023.05.09.01.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 01:52:41 -0700 (PDT)
Message-ID: <b68044bc-cf93-0b6b-41e8-28481ff95c10@linaro.org>
Date:   Tue, 9 May 2023 10:52:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 4/6] ARM: dts: qcom: apq8074-dragonboard: add resin and
 gpio keys
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230508160446.2374438-1-dmitry.baryshkov@linaro.org>
 <20230508160446.2374438-5-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230508160446.2374438-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.05.2023 18:04, Dmitry Baryshkov wrote:
> Add device nodes for resin (reset, volume-down) and gpio-keys
> (volume-up, general key) device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> index 1345df7cbd00..630180edecfd 100644
> --- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> +++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include "qcom-msm8974.dtsi"
>  #include "qcom-pm8841.dtsi"
>  #include "qcom-pm8941.dtsi"
> @@ -17,6 +19,26 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		pinctrl-0 = <&msm_keys_default>;
> +		pinctrl-names = "default";
> +
> +		button-volup {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			gpios = <&pm8941_gpios 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		button-general {
> +			label = "General";
> +			linux,code = <KEY_PROG1>;
> +			gpios = <&pm8941_gpios 23 GPIO_ACTIVE_LOW>;
> +		};
> +	};
>  };
>  
>  &blsp1_uart2 {
> @@ -35,6 +57,23 @@ eeprom: eeprom@52 {
>  	};
>  };
>  
> +&pm8941_gpios {
> +        msm_keys_default: pm8941-gpio-keys-state {
> +		pins = "gpio5", "gpio23";
> +		function = "normal";
> +		input-enable;
> +		drive-push-pull;
> +		bias-pull-up;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> +		power-source = <PM8941_GPIO_S3>; /* 1.8V */
> +        };
> +};
> +
> +&pm8941_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +	status = "okay";
> +};
> +
>  &rpm_requests {
>  	regulators-0 {
>  		compatible = "qcom,rpm-pm8841-regulators";
