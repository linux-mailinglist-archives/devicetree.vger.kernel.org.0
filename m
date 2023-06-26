Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62FE573DBB6
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 11:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbjFZJry (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 05:47:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229570AbjFZJrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 05:47:53 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30628D9
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 02:47:51 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f122ff663eso3821365e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 02:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687772869; x=1690364869;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FL2w3500sIslMCHjh74BxBfG9msGNmWLpgO8tAAcfcI=;
        b=IpGFfzmRPNNLymcJjxeMhezDqYfxivyGGAzIj7wGdCaoEpQCgUsUFdTar0gVG72y5W
         S0rfK+siR5sRdmxukIQ7GWUtJFds/eHGFzW3p4hicLiZppEvUcIWtR/51WMXA7IE7h0I
         jnHR2/POnbhZ1wpP2eIu8o+k3dFa3ldov1HxZV/PF0/e9oV7MzuUmdM92SKa08QIuvaT
         ypyZ9Uw8gZ4qZvD16VVuX4/KgmqxqYqbN2lqDb9Kg5+rcdpgRWZHDPsED23ckMWJqFAI
         a2si5U4IQanSmDD5Br+Oq+y4Tti/7FX75PHYCBzqr5s+xaQLggLGB/ZTMZV0dDKjFyKu
         aV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687772869; x=1690364869;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FL2w3500sIslMCHjh74BxBfG9msGNmWLpgO8tAAcfcI=;
        b=M2h9jt1fRDsn/SznbDsECwBHYvBfe3OEljH6O1n5GW21tZJRblnZ0dr1fEPoeO1qQb
         JioDcSCcqg8p5FOrisgrX5ZzYdxnIMmm+oAf+Uh9CjVAF5v8Ex6CAV2b3aakGwy6QCmZ
         fg7fqu2e9xTZCLqWPSp97k6PRHKxcbXDo9T+QqwvIq6pY2gJ2ixl0Ky1vISiImzTPz6i
         7P/pXdUt1kfifwuGUWslLNkUX8id8pPTy3YaQXqW+3Kc3iufzV6sHVrkR7Flye1PElUl
         BttS0x9MlnFBQ1ktJzIxqv6Px4T0Hs3IQ6pPTqSw0wvprX1K/A0qPBluYTn2f9pSWDdh
         3NHA==
X-Gm-Message-State: AC+VfDxzyJooB04ldgSRZyT7K0lUeSHEl7tzePmPPYck42ewfWnmTeAC
        QdQ+smEnbN7yNc/9Pbdbc9dnHA==
X-Google-Smtp-Source: ACHHUZ5rZsKDrCepmuT9s/sabNf4DTSFXD6dlVhcagGc7ZJz0fxvXb7tpjWKJRXQTQbqS6gKnHcWHA==
X-Received: by 2002:a19:9106:0:b0:4f9:54f0:b6db with SMTP id t6-20020a199106000000b004f954f0b6dbmr9983688lfd.13.1687772869510;
        Mon, 26 Jun 2023 02:47:49 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id q12-20020ac24a6c000000b004fb7b4c803esm54882lfp.180.2023.06.26.02.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 02:47:49 -0700 (PDT)
Message-ID: <863e04e8-3e14-d8bc-f9b4-8e184b545767@linaro.org>
Date:   Mon, 26 Jun 2023 11:47:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RFT PATCH] arm64: dts: qcom: sdm850-c630: add missing panel
 supply
Content-Language: en-US
To:     Caleb Connolly <caleb.connolly@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230617171512.286795-1-krzysztof.kozlowski@linaro.org>
 <52dbabb2-8cc1-5579-8c83-adcc7a699222@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <52dbabb2-8cc1-5579-8c83-adcc7a699222@linaro.org>
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

On 24.06.2023 16:56, Caleb Connolly wrote:
> 
> 
> On 17/06/2023 17:15, Krzysztof Kozlowski wrote:
>> Panel bindings (boe,nv133fhm-n61) require supply which here actually can
>> be turned on/off via GPIO control:
>>
>>   sdm850-lenovo-yoga-c630.dtb: panel: 'power-supply' is a required property
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> I've been running an equivalent patch for a while, so
> 
> Tested-by: Caleb Connolly <caleb.connolly@linaro.org>
> 
> The dsi bridge vcc and vcca supplies are also missing, they're powered
> from vreg_l2a_1p2 and controlled by pm8998_gpio 9.
Mind submitting an incremental patch?

Konrad
>>
>> ---
>>
>> Not tested on hardware
>> ---
>>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 20 +++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
>> index cfbc4fc1eba9..3d871567cf81 100644
>> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
>> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
>> @@ -87,6 +87,25 @@ sn65dsi86_refclk: sn65dsi86-refclk {
>>  		clock-frequency = <19200000>;
>>  	};
>>  
>> +	vph_pwr: regulator-vph-pwr {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vph_pwr";
>> +		regulator-min-microvolt = <3700000>;
>> +		regulator-max-microvolt = <3700000>;
>> +	};
>> +
>> +	vlcm_3v3: regulator-vlcm-3v3 {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vlcm_3v3";
>> +
>> +		vin-supply = <&vph_pwr>;
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +
>> +		gpio = <&tlmm 88 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +	};
>> +
>>  	backlight: backlight {
>>  		compatible = "pwm-backlight";
>>  		pwms = <&sn65dsi86 1000000>;
>> @@ -419,6 +438,7 @@ aux-bus {
>>  			panel: panel {
>>  				compatible = "boe,nv133fhm-n61";
>>  				backlight = <&backlight>;
>> +				power-supply = <&vlcm_3v3>;
>>  
>>  				port {
>>  					panel_in_edp: endpoint {
> 
