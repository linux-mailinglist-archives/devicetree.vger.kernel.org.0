Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82B1149DFAB
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 11:46:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239571AbiA0Kqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 05:46:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239179AbiA0Kqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 05:46:37 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CE25C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 02:46:36 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id s18so3933759wrv.7
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 02:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=INQLM7jSRCzBoxfXW9jTTbSbm/ueqhtFo7lfbZC+OTA=;
        b=ubIxn1E+uNN1vDY8MebsAnQ7GuteGrFXwuGBUEKfvEdrfcixd8B/PL3c6z249JegoI
         UB+w1mUpFo7WRUInG4yAS/VwFV6a02sedrhPEFAhzYmlRMaRbmFYlHRqLksIa9PC7HNU
         hPoZrEllCxxNU4IdjpwWXJUM0TxbEwDARYj5b+g/SKG0IJRgrnbvGyJP8thtdHaEHjAw
         PMd7tq7fp7skgzU7VW3YLI0toF343PGWT33l/q8qGNRrghmUBOSZnQCac/vvAaIhPWu1
         hN4w138udbtDxqSo0bW8vhRWASaC8l5dbhwWAyEHr01HKVx8tiwWy8pC+W62A0IvyO5B
         zA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=INQLM7jSRCzBoxfXW9jTTbSbm/ueqhtFo7lfbZC+OTA=;
        b=a3xoYK1q8GpkpTI+545mhF/OjFXP37I8nOqvtdix8LdkVb4NZwn4S3h6q/nEaqB4iu
         KqVP89gELfNllfDMH+qgBdTVejOLtlMXbQcl1BQ7p2sEbX/8hvAh/QmnHDmqL516FEa2
         xKst+5zZE9Le6zgd/qaZWofgd00SBPSO/jeXipUJ7jcQupFBPhPyArXd9H0d35MjB1qA
         MAA2rXAS6UMVEWuZzt+HFMrRXNK5igW28dZR23dsvW/QW0Na+SuUSfa0IWkaecQiuQjg
         csUgWnGEArIvKw9aoSnROCWC+mw94sFOvk4dTyGrEAR5Od6Lecha7mfGLFRWTymTJThH
         93tg==
X-Gm-Message-State: AOAM530tLBQePoZoK8i4hJZa1febNGEWvxrG1V7kvGYqhST4TYrGaRRq
        XXOnnFodmwZkuV8oYksa6c6nJavepLVLoA==
X-Google-Smtp-Source: ABdhPJyrYLuJIOBp3qeu8mqqbHMX/5mzQXLLyDocyJjjEBiYOnwetPI8LA9wboNZZFmrinmGUK2+mw==
X-Received: by 2002:adf:f90c:: with SMTP id b12mr2473052wrr.97.1643280394960;
        Thu, 27 Jan 2022 02:46:34 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff? ([2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff])
        by smtp.gmail.com with ESMTPSA id h4sm2162389wre.0.2022.01.27.02.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 02:46:34 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: meson-g12: drop BL32 region from
 SEI510/SEI610
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220126044954.19069-1-christianshewitt@gmail.com>
 <20220126044954.19069-4-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <cea820b0-5ca6-4a34-3d57-92e593785001@baylibre.com>
Date:   Thu, 27 Jan 2022 11:46:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220126044954.19069-4-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 05:49, Christian Hewitt wrote:
> The BL32/TEE reserved-memory region is now inherited from the common
> family dtsi (meson-g12-common) so we can drop it from board files.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 8 --------
>  arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts  | 8 --------
>  2 files changed, 16 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index d8838dde0f0f..4fb31c2ba31c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -157,14 +157,6 @@
>  		regulator-always-on;
>  	};
>  
> -	reserved-memory {
> -		/* TEE Reserved Memory */
> -		bl32_reserved: bl32@5000000 {
> -			reg = <0x0 0x05300000 0x0 0x2000000>;
> -			no-map;
> -		};
> -	};
> -
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> index 427475846fc7..a5d79f2f7c19 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
> @@ -203,14 +203,6 @@
>  		regulator-always-on;
>  	};
>  
> -	reserved-memory {
> -		/* TEE Reserved Memory */
> -		bl32_reserved: bl32@5000000 {
> -			reg = <0x0 0x05300000 0x0 0x2000000>;
> -			no-map;
> -		};
> -	};
> -
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
