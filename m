Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40457450156
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 10:27:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237618AbhKOJ3z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 04:29:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237430AbhKOJ0T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 04:26:19 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA1CC061195
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:21:26 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id p3-20020a05600c1d8300b003334fab53afso12279750wms.3
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gCK8Nd17obdPp1MpQ7JQuUtyWLHCJ1CvIZmrjxDGQkI=;
        b=yqgWpZ6Nqy+Wr2ABqvxUqnlnPKK5HXVBhQCePFW1A2L2Cu9BdWqsiGgI8ZBqvaJsiU
         B9RAszc6kr9XBOSaDtBVhK4FLq9rDUD4mZZopxP1y/9JaKimhgdgyDpAHmvyoLzefoQX
         q66KSRCIDnEwQxzMyzr6VEk8hZMa5Wxi5N0cPSq+7q1wujWCI0mbpZ/Adk5/HgEY+T+a
         cEgtCIpI29DePxaxZGgkQsPpEqse6jmTd7D+tkfRLpunvCwcVAsmD2cAcUeVc3Y+m3tR
         jrzbgj7rxDbtH78NnDrF+225Qqb8YnlKgr/hl6xTz6I2PAg09ePzl0JMZOh2xBddUtge
         /Brg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=gCK8Nd17obdPp1MpQ7JQuUtyWLHCJ1CvIZmrjxDGQkI=;
        b=r7xUtmqeyvcOj2ySt8ewR2aCTqqcvWs40T1AizHmZ6DCv1H5mkJ/nHM7KEO31qrmWv
         HbYGX9o4waGSLTq9cC5LDc57uddb/Q2c4PTjqPCZ6IxYQ0FzDr5TakmrWYMuvADTc6IF
         2tSSK19R6hzAegrslYOJDBNeXJC8t5/aNaP8tIlL3tWVQ2gDaHGss4cRL8rxveF/5CLK
         uaSsd7aNUrqLZ7Eh+weyCk3zgd2pD+54iscf5WTTAGWEBd9vS1y1WnKmE0FNvLg+gY2S
         rCugGIxTEYOW9zGo10Q9WRDEJ/PFu5+2wOP524wbCYFhkyW/OTor/mNqLJu/Bl4rEUUZ
         FsoA==
X-Gm-Message-State: AOAM532XDWok8O0jN4XO+erG4cFgDcmC9bJMx27z52SiuWVQvxvK2VYH
        RX1VlxErMazJtNt1nkVc5qBRmA==
X-Google-Smtp-Source: ABdhPJzMxu5bqzjRq8fAtSPHVY8IXjeVoxkY572Trq9ZHoy/wRUquZYkG7mX+7rIYNzBRrSAfsIPFA==
X-Received: by 2002:a05:600c:4e4a:: with SMTP id e10mr35667590wmq.176.1636968084784;
        Mon, 15 Nov 2021 01:21:24 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:f56f:2409:301:93ad? ([2001:861:44c0:66c0:f56f:2409:301:93ad])
        by smtp.gmail.com with ESMTPSA id x21sm18783254wmc.14.2021.11.15.01.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 01:21:24 -0800 (PST)
Subject: Re: [PATCH v2 1/3] arm64: dts: amlogic: meson-g12: Fix thermal-zones
 indent
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20211026182813.900775-1-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <a26532a5-b509-59c9-9eaf-968632eeebea@baylibre.com>
Date:   Mon, 15 Nov 2021 10:21:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211026182813.900775-1-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2021 20:28, Alexander Stein wrote:
> This node is currently at /soc/thermal-zones, but the later introduced
> bindings in commit 1202a442a31f ("dt-bindings: thermal: Add yaml bindings
> for thermal zones") put this at /thermal-zones.
> Fix dtb_check warning by moving the thermal-zones node to /
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Changes in v2:
> * Separated from DT bindings patch in v1 (PATCH 1/4)
> * Dropped the Fixes tag
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


Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
