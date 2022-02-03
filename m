Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB044A87BB
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 16:36:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351882AbiBCPg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 10:36:27 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41396
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231831AbiBCPg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 10:36:26 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CE7B53F1AE
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643902585;
        bh=0PbrYUBCm7YsogxgvzFxegtO4WGK61hGVIm8dEbT1U0=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=J8G+j1wiAj3v41MACtenpKqehdWU0Eu93442lA43kZdgFwdQthh7AMVSPKcAWhU/h
         kQl1yOtaMstq2Hd9Dj8MNH2N6YeLqmjSwAcQ7EZ712VzGMDvalZyLDUPLLU48niser
         GLer9P3Ns/HUPceMGO6rsqiWD7u7EumsS0LTA182/tp6soz3sVRpUZxdl0Ynur4Kmc
         O+IlG637zuHtDHlszt6eVm4LnBuJ2U0QuD+faPeqKGqR/JQI0zyTc6xKPOBV45qqNw
         gAqSU9DpKepu5UnZ/yCBJd8oNI/BDlNpPwBnZLqkFFbGX7r5nHEksD4Tu1KL12pzRs
         j5ZrcmtRgPKeQ==
Received: by mail-ej1-f71.google.com with SMTP id mp5-20020a1709071b0500b0069f2ba47b20so1319423ejc.19
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 07:36:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0PbrYUBCm7YsogxgvzFxegtO4WGK61hGVIm8dEbT1U0=;
        b=WO0f2ySV6c+7r48w68AbggxAG77GFmyMWJqDLZnwizOkRWohv8lmSBI+T+9yl4VZ/9
         l9cb9icav0TdIn1Pb01gjuH+YAAEN0DRtKu4GNoSl+LBHLjNh3JIOohi2X3WNa7tH6gb
         zxVGjXcx+/ZTIGwJH3+Tprv7LCjsnxHyynGjcsZYScpvPbpLZ3CLwF46dsNmlv1GQihV
         iobEXlpK2USOg9hqcsPonIN87H0WBRCqyOWau4fmvxsySCbImA80t9kKEbltn2PtW7MQ
         G8DOg999y+V1nNzRCfuKkELsNQeeW177p3hlpzEUbR2MH/byJKWhKqQjJcyjKCkJ6pdr
         LPNA==
X-Gm-Message-State: AOAM533+WRU3jDNgqVf5vPKgJJielPK1L0LSIGferwcAZTkPiqiro1fJ
        JFy4YmrEjO7tzwzx+gS8azIgaMgyLzdfdNS5YdWNnTqehyUFkA5hOFQzS0WmHZDrOn6yZlTPjP8
        kXtTYgmsNJ5knV2h0ed4WKLpXuVQ/Ae58F+6jMvg=
X-Received: by 2002:a05:6402:7d7:: with SMTP id u23mr14268958edy.451.1643902585514;
        Thu, 03 Feb 2022 07:36:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzxCBPYj3hXFA54L4u4Byd3GvnXIPuGZ5/7CTht1imE1hR5HwgP9k3njjsYkCMpIYeyISx5Sw==
X-Received: by 2002:a05:6402:7d7:: with SMTP id u23mr14268948edy.451.1643902585375;
        Thu, 03 Feb 2022 07:36:25 -0800 (PST)
Received: from [192.168.0.81] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 5sm23446951edx.32.2022.02.03.07.36.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 07:36:24 -0800 (PST)
Message-ID: <787b0060-266e-0efd-1bbb-43c33abcbb24@canonical.com>
Date:   Thu, 3 Feb 2022 16:36:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] ARM: dts: exynos: add simple battery to p4note
Content-Language: en-US
To:     =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Russell King <linux@armlinux.org.uk>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <5d15937b6a7c4ae82a8f0d164fa28a4d4ad46325.1643757744.git.martin.juecker@gmail.com>
 <9436c417fc542eaa74011046369e089a68eea39e.1643757744.git.martin.juecker@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <9436c417fc542eaa74011046369e089a68eea39e.1643757744.git.martin.juecker@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/02/2022 17:34, Martin Jücker wrote:
> Add a simple battery node to the p4note device tree to set the missing
> values for the charger to work properly.
> 
> Signed-off-by: Martin Jücker <martin.juecker@gmail.com>
> ---
>  arch/arm/boot/dts/exynos4412-p4note.dtsi | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
> index 63459db653ea..fcd75cceb877 100644
> --- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
> @@ -115,6 +115,17 @@ wlan_pwrseq: sdhci3-pwrseq {
>  		clock-names = "ext_clock";
>  	};
>  
> +	battery_cell: battery-cell {
> +		compatible = "simple-battery";
> +		device-chemistry = "lithium-ion";
> +		constant-charge-current-max-microamp = <2200000>;
> +		precharge-current-microamp = <250000>;
> +		charge-term-current-microamp = <250000>;
> +		constant-charge-voltage-max-microvolt = <4200000>;
> +
> +		power-supplies = <&power_supply>;
> +	};
> +
>  	i2c-gpio-1 {
>  		compatible = "i2c-gpio";
>  		sda-gpios = <&gpy2 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> @@ -193,7 +204,7 @@ i2c-gpio-4 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> -		charger@6 {
> +		power_supply: charger@6 {

Squash this change with the previous patch. No need to add a line and
immediately change it in next patch.

>  			compatible = "summit,smb347";
>  			reg = <0x6>;
>  			summit,enable-usb-charging;
> @@ -201,6 +212,8 @@ charger@6 {
>  			summit,fast-voltage-threshold-microvolt = <2600000>;
>  			summit,chip-temperature-threshold-celsius = <130>;
>  			summit,usb-current-limit-microamp = <1800000>;
> +
> +			monitored-battery = <&battery_cell>;
>  		};
>  	};
>  


Best regards,
Krzysztof
