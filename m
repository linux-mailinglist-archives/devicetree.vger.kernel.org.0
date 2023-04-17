Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A254B6E4256
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 10:15:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230347AbjDQIPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 04:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbjDQIPW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 04:15:22 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D31451FDB
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 01:15:15 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50677365fd1so2411961a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 01:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681719314; x=1684311314;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qyd57+hDVpdwNMW7hr5gKwq+MvzTgUGFKsE7mL7n1nM=;
        b=IEL7MDertJUokHTDoF+VbTls2kkSYhPTQpOIbn1V2ZW19tCcAw/LYjILja6GlPPdnH
         vWG4KDNUHefNx4bzcHYytElPd0/vwLDUbjTnngyiupDYUEh5RL0g2RsshYTbIQBMP5WR
         fabRT/GL5nsSZN3iIqi9rETASY2YQQnL+uvNZ0/CdfPzGrlspbZ4kUek1k+RGESt9VrB
         LovbgsfO2gCr888khVgs77RjtJsM/WmFrx0/DWHmjKuf2woW4uzfiBT5W5rx0Ayyl6+8
         xLVCnnnlngNZxOrJCImSBwjNMYCWpzAwPj9bxVO9wk9XFFc+AuFtB2o6TNdH/4Gi17DG
         8erQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681719314; x=1684311314;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qyd57+hDVpdwNMW7hr5gKwq+MvzTgUGFKsE7mL7n1nM=;
        b=bYz4Z9N7v1R0KAAu+SEErWOxpux34PcmDw5u5ydG1iR7FMRpi+u5+bYTz6HRCj4MbS
         AqNsrk7qlI7e6rr8EZ/IQDg8djQFZr5iYnq/wWxOxilYC/FmCBR5II6BdAzcvzSCpwff
         bXqHiGT+itkMmFFsiz0ZMHFzGAQOLjxz4LWfit29ywLGl1OBzDtU3PzfRUpWC7H06pM4
         tC+G2MjOcHV8yREuZ1jNA4xga3OSetOzkMxpN9BJ387xlXwBYOw1nR8HSGnjqGN6wYto
         NX5SB3EEAW79Ah4ziNnHPmtdqSaBMzdqMVHNGYVdMBqm+1LFlw62m6ioCGNq8ku6Yihl
         nfuA==
X-Gm-Message-State: AAQBX9d1T6GKcdbubMiZJTfvt5aVep5tpMjPXl+OihNuvMVBM9dB0uUp
        bAiythh9grrEEPSIykJklqcP9A==
X-Google-Smtp-Source: AKy350bOtbV50RP+sOLjmT+9xsUHvSnfPE1mcMDJEka9U/cwi9TkOgGuesHnY06oIDcgN/pFxX87MA==
X-Received: by 2002:a05:6402:b2e:b0:504:af14:132d with SMTP id bo14-20020a0564020b2e00b00504af14132dmr12818333edb.13.1681719314126;
        Mon, 17 Apr 2023 01:15:14 -0700 (PDT)
Received: from [192.168.2.1] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id dy11-20020a05640231eb00b00506956c99d9sm2625337edb.15.2023.04.17.01.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 01:15:13 -0700 (PDT)
Message-ID: <ed5f12fd-f1f8-9823-a32d-5782068dc790@linaro.org>
Date:   Mon, 17 Apr 2023 10:15:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 09/10] arm64: tegra: Rework SOCTHERM on Tegra132 and
 Tegra210
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
        Jon Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20230414125721.1043589-1-thierry.reding@gmail.com>
 <20230414125721.1043589-10-thierry.reding@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230414125721.1043589-10-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 14:57, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The "heavy throttle" cooling device that SOCTHERM uses isn't a cooling
> device in the traditional sense. It's an automatic mechanism that cannot
> be actively controlled. Do not expose it as a cooling device and instead
> of tying it to a specific trip point, hard-code the temperature at which
> the automatic throttling will begin.
> 
> While at it, clean up the trip point names to reflect the names used by
> the thermal device tree bindings.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>   arch/arm64/boot/dts/nvidia/tegra132.dtsi | 63 +++++-------------
>   arch/arm64/boot/dts/nvidia/tegra210.dtsi | 83 +++++++-----------------
>   2 files changed, 39 insertions(+), 107 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
> index 8b78be8f4f9d..11ebf7517df1 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
> @@ -876,11 +876,10 @@ soctherm: thermal-sensor@700e2000 {
>   		#thermal-sensor-cells = <1>;
>   
>   		throttle-cfgs {
> -			throttle_heavy: heavy {
> +			heavy {
>   				nvidia,priority = <100>;
>   				nvidia,cpu-throt-level = <TEGRA_SOCTHERM_THROT_LEVEL_HIGH>;
> -
> -				#cooling-cells = <2>;
> +				temperature = <102000>;
>   			};
>   		};
>   	};
> @@ -1136,114 +1135,84 @@ cpu-thermal {
>   			polling-delay-passive = <1000>;
>   			polling-delay = <0>;
>   
> -			thermal-sensors =
> -				<&soctherm TEGRA124_SOCTHERM_SENSOR_CPU>;
> +			thermal-sensors = <&soctherm TEGRA124_SOCTHERM_SENSOR_CPU>;
>   
>   			trips {
> -				cpu_shutdown_trip {
> +				critical {
>   					temperature = <105000>;
>   					hysteresis = <1000>;
>   					type = "critical";
>   				};
>   
> -				cpu_throttle_trip: throttle-trip {
> +				hot {
>   					temperature = <102000>;
>   					hysteresis = <1000>;
>   					type = "hot";
>   				};
>   			};
> -
> -			cooling-maps {
> -				map0 {
> -					trip = <&cpu_throttle_trip>;
> -					cooling-device = <&throttle_heavy 1 1>;
> -				};
> -			};

If the hardware mitigation is 'heavy', don't you want to have DVFS 
acting before hardware throttling ?

[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

