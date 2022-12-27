Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5AB656D2D
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 18:03:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231775AbiL0RDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 12:03:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231793AbiL0RDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 12:03:14 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA265B7EA
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 09:03:12 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id g13so20358037lfv.7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 09:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B1vpybtwIhBEZ1onJvfqUIpjSyStnMtVV9MFu55Vtqw=;
        b=NCi459RI9XW+Z9rL9PV16MA4s96Chbb9cxm8euXRVBWe27UVCtnaUgb48OIUxG1uqO
         BCP0UN7XwoP4T7TdHW5ad3ycmFCw72/Z0GM0V9hbcwtIx0JUpNsdhQzEA/O2gM3ovByM
         AaUnK6oZ6SGCKGwgna7Zk/R3pFo+Z8LJ9yn8vaWAiA37byhz8RLyFFGPN77he0H1+qdo
         buparXIcKeXva9/GqbrBiq+zuVtl+urKphiN1pcdasEqB5YRL8NsTdot4tD9BEEmr7o+
         xxN8RU9kyxbLDviMyLnSqxBXtCGQ9ic7yVzPSGcIFIWWFgXFA13PpjyqTyesFg7KpkNL
         U4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B1vpybtwIhBEZ1onJvfqUIpjSyStnMtVV9MFu55Vtqw=;
        b=6LXQ03KkLpwlbtdWZW08RocFTHZ7yiMgFecbcZ9jAXjrQBrcC8tMZfiuThbNbtV2YN
         IzEXJZWuAHH+Ns1aam5OvEZi4sntHeQO4gOKWtDSPlh07INF5EKENd/JyQf9y3vbJ/K2
         TXCiVG2Qd5N73aJ5wCWfGbl9iSiXu5VOE88iyMgBFhB8gnH9oyK5G2lGR06Xg8tNJ3UO
         yJNQDdf8AwjfHw1/7e27hRDf1pi1K6KT21PbkmXITSHrz4zfZVuShdH9UncZ5p0q+FtZ
         VesUWsyVB6sIFkqpQUv3jQOX0zzg2zF5muxBbm8gNz7D2WhV9CkoJrYZHW7fBY/m5eTS
         Ke7w==
X-Gm-Message-State: AFqh2kq7QFIrti5nwW0BjuNDQ7xCasIWSWR7fNvJFibbT4pcpGMrB7LV
        odCJhcI3eIjC+5Eas5UfceS1qQ==
X-Google-Smtp-Source: AMrXdXsDI7wTXzk/sS4+zOAvRmS1DnxclF7/SHG8GS2gHo4GJhLtnfASO3JErZ2DhjzADxgLIiWShA==
X-Received: by 2002:ac2:5479:0:b0:4a4:68b9:66f3 with SMTP id e25-20020ac25479000000b004a468b966f3mr5518895lfn.62.1672160591163;
        Tue, 27 Dec 2022 09:03:11 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id o17-20020ac24351000000b0048a934168c0sm2323129lfl.35.2022.12.27.09.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 09:03:10 -0800 (PST)
Message-ID: <0a8c30c8-7786-da35-98fb-fadcf25b5389@linaro.org>
Date:   Tue, 27 Dec 2022 18:03:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: move 'thermal-zones'
 node
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221227170202.21618-1-johan+linaro@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221227170202.21618-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.12.2022 18:02, Johan Hovold wrote:
> Move the 'thermal-zones' node after the regulator nodes to restore the
> root-node sort order (alphabetically by node name).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 92 +++++++++----------
>  1 file changed, 46 insertions(+), 46 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 568c6be1ceaa..fce2d9d6e2bc 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -31,52 +31,6 @@ backlight {
>  		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
>  	};
>  
> -	thermal-zones {
> -		skin-temp-thermal {
> -			polling-delay-passive = <250>;
> -			polling-delay = <0>;
> -			thermal-sensors = <&pmk8280_adc_tm 5>;
> -
> -			trips {
> -				skin_temp_alert0: trip-point0 {
> -					temperature = <55000>;
> -					hysteresis = <1000>;
> -					type = "passive";
> -				};
> -
> -				skin_temp_alert1: trip-point1 {
> -					temperature = <58000>;
> -					hysteresis = <1000>;
> -					type = "passive";
> -				};
> -
> -				skin-temp-crit {
> -					temperature = <73000>;
> -					hysteresis = <1000>;
> -					type = "critical";
> -				};
> -			};
> -
> -			cooling-maps {
> -				map0 {
> -					trip = <&skin_temp_alert0>;
> -					cooling-device = <&CPU4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -				};
> -
> -				map1 {
> -					trip = <&skin_temp_alert1>;
> -					cooling-device = <&CPU4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&CPU7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -				};
> -			};
> -		};
> -	};
> -
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -172,6 +126,52 @@ vreg_wwan: regulator-wwan {
>  
>  		regulator-boot-on;
>  	};
> +
> +	thermal-zones {
> +		skin-temp-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&pmk8280_adc_tm 5>;
> +
> +			trips {
> +				skin_temp_alert0: trip-point0 {
> +					temperature = <55000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +
> +				skin_temp_alert1: trip-point1 {
> +					temperature = <58000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +
> +				skin-temp-crit {
> +					temperature = <73000>;
> +					hysteresis = <1000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&skin_temp_alert0>;
> +					cooling-device = <&CPU4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +
> +				map1 {
> +					trip = <&skin_temp_alert1>;
> +					cooling-device = <&CPU4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&CPU7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
