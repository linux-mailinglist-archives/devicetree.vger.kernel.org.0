Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453D643AD30
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 09:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231163AbhJZHaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 03:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbhJZHaJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 03:30:09 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42E1AC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 00:27:46 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 82-20020a1c0055000000b0032ccc3ad5c1so69291wma.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 00:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bBJ3JH2WgYnvwuSIXVR2ON5WYrHTE9TEMenRcZaqf64=;
        b=O+0SeHGyFN4W7YLsGBd9f6l/5PyyJ/UFeaBvYxfvG0Vnl+F1CH9azZq0UhDoMDYsWj
         qDbXHwK/KuoAkwzOt+3QBnCFa/GXvFTWeh7r9GvBs6gDQzp65vP9mnbgCirgBzkQyxqq
         5Q1pV6wOkXvF1S15zWga7c4V2p7OwMH/dzTRtEDPgVbIJizRU7/eBM/ZK7oPaM9j98on
         aIcuXLc0krAW8SM7EgGUfbv7zf3DP9EfEj1fGxlSelYDHS3pm/go1z73V8+xHvWuq5lW
         RfEWHhkoaB63lyOTTLeoiUhgpLFN7FB56wVptRdjW+Djo9n4KXBqj/Pr2QY2aRQ6Wy1C
         rZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=bBJ3JH2WgYnvwuSIXVR2ON5WYrHTE9TEMenRcZaqf64=;
        b=WSnr0x5DbxagSK2ELyPe44ESiUpP5UM1b0YnQZxYWPI7RJG1ZD+ib7k5s01+w2qM0k
         vgfvT0JITlL3l7PlGW4hO78M2yI9rctaC4O06JwHOPj1XT/pQd5ptyuuL4YL9LUUjUGF
         OnvMnGJWt2HXxZoLBErZA/dUVDRvaZQ5ETX4y+qP6kcbnrZrbbPFsZ+3BU7Lch9jfarN
         Gl7Q3BS2L8SOZnhP4v47lOFDoH76b1ubYjaXM/8X1yhctAbONL6JUZl11GbJuymZuUGa
         OlEimLKy5RO4EBTkGVqr8/cb6Duj5QuD+wfMlkaEIm/gatW13iB3+JWG2opb0dV+/X6V
         O0GQ==
X-Gm-Message-State: AOAM5312wwbBkuCSHfLvCAVVMArJ8q9L3IMZRDyj0ggZTryx4s525JgY
        U4dtF0hwCUouKnFCJOHKMF5uaUIolDQeNg==
X-Google-Smtp-Source: ABdhPJxqOJbVHyzVttUMRIw2o4DLKt4nkv1HGVRnMWVDahphDl4wLHhWq31LDbgwoKyN0kVgIzTKKw==
X-Received: by 2002:a1c:98c8:: with SMTP id a191mr23254257wme.84.1635233264709;
        Tue, 26 Oct 2021 00:27:44 -0700 (PDT)
Received: from [172.20.10.7] ([37.169.6.193])
        by smtp.gmail.com with ESMTPSA id t6sm12558703wrw.78.2021.10.26.00.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 00:27:44 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: dts: amlogic: meson-g12: Fix thermal-zones
 indent
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
 <20211023214856.30097-2-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <fd76f9e2-f3e1-8520-7569-2390edaa538e@baylibre.com>
Date:   Tue, 26 Oct 2021 09:27:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211023214856.30097-2-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 23/10/2021 23:48, Alexander Stein wrote:
> This node is currently at /soc/thermal-zones, but the later introduced
> bindings in commit 1202a442a31f ("dt-bindings: thermal: Add yaml bindings
> for thermal zones") put this at /thermal-zones.
> Fix dtb_check warning by moving the thermal-zones node to /
> 
> Fixes: e7251ed74ef7 ("arm64: dts: meson: g12: Add minimal thermal zone")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> I admit I'm a bit unsure about the 'Fixes' tag as at the time when those
> thermal-zones were added there was no schema present. So there was no bug at
> the time of writing. I'm ok either way.

I'm also unsure about it, either you list all commits that must be present for the fix to be applied,
or remove it since it's not a bug.

Neil

> 
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 110 +++++++++---------
>  1 file changed, 55 insertions(+), 55 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index 00c6f53290d4..ff987e7ccff2 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -159,61 +159,6 @@ &clkc CLKID_PCIE_COMB
>  			status = "disabled";
>  		};
>  
> -		thermal-zones {
> -			cpu_thermal: cpu-thermal {
> -				polling-delay = <1000>;
> -				polling-delay-passive = <100>;
> -				thermal-sensors = <&cpu_temp>;
> -
> -				trips {
> -					cpu_passive: cpu-passive {
> -						temperature = <85000>; /* millicelsius */
> -						hysteresis = <2000>; /* millicelsius */
> -						type = "passive";
> -					};
> -
> -					cpu_hot: cpu-hot {
> -						temperature = <95000>; /* millicelsius */
> -						hysteresis = <2000>; /* millicelsius */
> -						type = "hot";
> -					};
> -
> -					cpu_critical: cpu-critical {
> -						temperature = <110000>; /* millicelsius */
> -						hysteresis = <2000>; /* millicelsius */
> -						type = "critical";
> -					};
> -				};
> -			};
> -
> -			ddr_thermal: ddr-thermal {
> -				polling-delay = <1000>;
> -				polling-delay-passive = <100>;
> -				thermal-sensors = <&ddr_temp>;
> -
> -				trips {
> -					ddr_passive: ddr-passive {
> -						temperature = <85000>; /* millicelsius */
> -						hysteresis = <2000>; /* millicelsius */
> -						type = "passive";
> -					};
> -
> -					ddr_critical: ddr-critical {
> -						temperature = <110000>; /* millicelsius */
> -						hysteresis = <2000>; /* millicelsius */
> -						type = "critical";
> -					};
> -				};
> -
> -				cooling-maps {
> -					map {
> -						trip = <&ddr_passive>;
> -						cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -					};
> -				};
> -			};
> -		};
> -
>  		ethmac: ethernet@ff3f0000 {
>  			compatible = "amlogic,meson-g12a-dwmac",
>  				     "snps,dwmac-3.70a",
> @@ -2415,6 +2360,61 @@ mali: gpu@ffe40000 {
>  		};
>  	};
>  
> +	thermal-zones {
> +		cpu_thermal: cpu-thermal {
> +			polling-delay = <1000>;
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&cpu_temp>;
> +
> +			trips {
> +				cpu_passive: cpu-passive {
> +					temperature = <85000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "passive";
> +				};
> +
> +				cpu_hot: cpu-hot {
> +					temperature = <95000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "hot";
> +				};
> +
> +				cpu_critical: cpu-critical {
> +					temperature = <110000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		ddr_thermal: ddr-thermal {
> +			polling-delay = <1000>;
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&ddr_temp>;
> +
> +			trips {
> +				ddr_passive: ddr-passive {
> +					temperature = <85000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "passive";
> +				};
> +
> +				ddr_critical: ddr-critical {
> +					temperature = <110000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map {
> +					trip = <&ddr_passive>;
> +					cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +
>  	timer {
>  		compatible = "arm,armv8-timer";
>  		interrupts = <GIC_PPI 13
> 

