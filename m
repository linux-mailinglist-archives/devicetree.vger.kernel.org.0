Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D66983EB5E2
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 15:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240119AbhHMNA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 09:00:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240092AbhHMNA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 09:00:27 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CB9C0617AD
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 06:00:00 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id r6so13213832wrt.4
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 06:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yWKsfWgIhI0TmkD3FRabzZ//m5kfIayjEK0ZDnGZ6s4=;
        b=vIiYx0IelsaG/hrBCtDoZCmZyUe/mlHr8BH0fKaGZM3o14thAa3ZlrYebLrAJ0g5ni
         xbJD1IBbD3teW6jFcV5OgGef0p1LQEsbQCllgubM1mcx92zL//6SC4gBf2Vzj7H6bZB5
         G6r17IuQ3k13GufWz2TZaAARc6BDPtu+I0DyoQlSTICvgyZRux7OsVHNkl+N/uKkbGXz
         nfoxVgfehCwh3Nvh5XDteKWiildlbn8HHLQTGQj9laGcRj930cLtOTxxtbmind4tBklZ
         4k+/Zc0FY3tZzKPfAdjSsWHdHNkZd9ZiyRejShV+qfb2CLp6nr7UNfqaTsA/yXEAD53M
         EOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yWKsfWgIhI0TmkD3FRabzZ//m5kfIayjEK0ZDnGZ6s4=;
        b=Rtoy//uqTdH854NXcTKMqrC+E58kKwV5kcWR7ToPKqNJV5231+P8rz+5oXBOpcHmF1
         n/+X4oCaCrME1ex3vPn3lU6dv7hiYNu2QVsuUSkVjibC/Rt5+sOOMijYjH2oV8hEGuzv
         lOQvPccolsTNsIOVqzzk4atOCvrKg5OQ0pWeSvwt1PHHMcyfDrwSbH4A7JY7UJNDssxt
         oujBjs/7jKKZRcRagrpo3j517fqOuSCAS1dIDb8J7TQz2cpybZlxuud4odBsS/RK5+bV
         WN1FBV2cLAp/gafYdjO19emPX0wPChcENzZ7VpOEdJnX3Fu4S6q33abGHf+UIq6hcWl5
         5Ftw==
X-Gm-Message-State: AOAM5300l4sqJsO/Usabwm+b41mp4ZnStXfck1sLyrXlAFGPf7FnOlIF
        1jMSLHp633PkEJz7DI6DsL8z3cJsECg9UcDu
X-Google-Smtp-Source: ABdhPJyAHwssiTSZDaXEbvthIbu5h/A1+8A8mHSYd+P9R0IN3SJmtcI6vcwtwthw/fozS7xGYfVVCg==
X-Received: by 2002:adf:ffd2:: with SMTP id x18mr265844wrs.184.1628859598288;
        Fri, 13 Aug 2021 05:59:58 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d? ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
        by smtp.googlemail.com with ESMTPSA id h12sm1361290wmm.29.2021.08.13.05.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 05:59:57 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To:     Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210730151727.729822-1-pgwipeout@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
Date:   Fri, 13 Aug 2021 14:59:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730151727.729822-1-pgwipeout@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2021 17:17, Peter Geis wrote:
> The rockpro64 had a fan node since
> commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
> however it was never tied into the thermal driver for automatic control.
> 
> Add the links to the thermal node to permit the kernel to handle this
> automatically.
> Borrowed from the (rk3399-khadas-edge.dtsi).
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> 
> Changelog:
> v3:
> Removed the gpu nodes to prevent in-fighting (thanks Robin!)
> 
> v2:
> Adjusted fan setpoints for less noise
> 
>  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 6bff8db7d33e..83db4ca67334 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -69,6 +69,7 @@ diy_led: led-1 {
>  
>  	fan: pwm-fan {
>  		compatible = "pwm-fan";
> +		cooling-levels = <0 100 150 200 255>;
>  		#cooling-cells = <2>;
>  		fan-supply = <&vcc12v_dcin>;
>  		pwms = <&pwm1 0 50000 0>;
> @@ -245,6 +246,34 @@ &cpu_b1 {
>  	cpu-supply = <&vdd_cpu_b>;
>  };
>  
> +&cpu_thermal {
> +	trips {
> +		cpu_warm: cpu_warm {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +
> +		cpu_hot: cpu_hot {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +

Why two trip points ?

Why not one functioning temperature and no lower / upper limits for the
cooling maps ?


> +	cooling-maps {
> +		map2 {
> +			trip = <&cpu_warm>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map3 {
> +			trip = <&cpu_hot>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};
> +	};
> +};
> +
>  &emmc_phy {
>  	status = "okay";
>  };
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
