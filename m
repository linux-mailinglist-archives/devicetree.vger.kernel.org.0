Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D582149E2F9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 14:00:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241448AbiA0NAV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 08:00:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241462AbiA0NAT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 08:00:19 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02CB7C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 05:00:19 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id d138-20020a1c1d90000000b0034e043aaac7so3250746wmd.5
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 05:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ThKwZzEoBwxLlFAIZol3ZN4msDIng1irxNDgy0k+rvc=;
        b=ydj0/OueVnJjO8OAlorriaqhjLQotHZJEeqmyT0xqowTtn7ESjmnqrqzKnaGS+u9c1
         wudEpQIHBGi2/w3k4pV64TB3aHgAmXxTtheV50G9i2m7MBaDh3p6sGWSbN6BMwVsgGLi
         YNBFgPGd29YkQdq1uztpkLgWK8jV18DISDhOa1ENmFGhpzzDRHv/qSuAOCZ2uLn4mbb/
         PldoF15pe5iQLDtEZdA+BVU6u8Yd1Pf5wRTEpT2XYS07pXM6pnEQv/drX2fq7Iz2+wjf
         zEcqRQm3irQ61f9WeQCR9qo/QraPkxnODk5wrQTgNbBR5ZwjKMxlK308icVc30XXAw/U
         zmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ThKwZzEoBwxLlFAIZol3ZN4msDIng1irxNDgy0k+rvc=;
        b=JMlLgroPQLKtz9O1YXm/BuRJ2layiXPojqkMvJOj5mNnFyzeRP7JBQUVUSPkBZsIbe
         5GD85WaxuUA14VnsgWK+4GCzSatNjB12Jv1l9HoL3l1bHQVVfd/zjdWIbvC3qB+x9266
         /hYRIZUs6xT5cxb+2bdqAXDzeIyWz3pxcGqJ/Yzt4sxoVhc7RbDPbAxc9+zqxm12EM8k
         qVXfc9gaLm/eMbPyrOijGm/X2N20v6jp6E1kntdOy/mgHOgFnInVxhsBmwpw0W/rAEP/
         lBav3DgCCeocSFpDZKuDZXsnWG3+GIUsYD893N6uyaN+xb93DTCZg4zskmI19tMi9TQm
         GjNw==
X-Gm-Message-State: AOAM530Iz4fdMPtu07sW0aqr+uoxOwxarDDLvGm5cASSd2Ya6b14DDs4
        CvMagBl/ICT0gAN0VGhdNkZ6kg==
X-Google-Smtp-Source: ABdhPJytoOWrwFTPO/vhPLQQlw+pOJNhOpY0awU0APR5Dw/RblEz48fpW5KA5FMrx6jC3i5IimycUQ==
X-Received: by 2002:a05:600c:3d94:: with SMTP id bi20mr11706693wmb.14.1643288412500;
        Thu, 27 Jan 2022 05:00:12 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff? ([2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff])
        by smtp.gmail.com with ESMTPSA id c13sm2169441wrv.24.2022.01.27.05.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 05:00:12 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: meson-sm1: fix wrong GPIO domain for GPIOE_2
To:     Dongjin Kim <tobetter@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <YfKPSvnFKOaLr74+@anyang>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <dcb67b4e-6a46-86a6-b21f-99263cc9ff05@baylibre.com>
Date:   Thu, 27 Jan 2022 14:00:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YfKPSvnFKOaLr74+@anyang>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 27/01/2022 13:25, Dongjin Kim wrote:
> GPIOE_2 is in AO domain and "<&gpio GPIOE_2 ...>" changes the state of
> GPIOZ_14 connected to INTR of 'RTL8211F' on ODROID-HC and TF_PWR_EN of
> 'FC8731' on BPI-M5
> 
> Fixes: 1f80a5cf74a6 ("arm64: dts: meson-sm1-odroid: add missing enable gpio and supply for tf_io regulator")
> Fixes: 976e920183e4 ("arm64: dts: meson-sm1: add Banana PI BPI-M5 board dts")
> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> index 212c6aa5a3b8..5751c48620ed 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
> @@ -123,7 +123,7 @@ vddio_c: regulator-vddio_c {
>  		regulator-min-microvolt = <1800000>;
>  		regulator-max-microvolt = <3300000>;
>  
> -		enable-gpio = <&gpio GPIOE_2 GPIO_ACTIVE_HIGH>;
> +		enable-gpio = <&gpio_ao GPIOE_2 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  		regulator-always-on;
>  
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> index bf29afac645f..d4349b355e4a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
> @@ -52,7 +52,7 @@ tf_io: gpio-regulator-tf_io {
>  		regulator-max-microvolt = <3300000>;
>  		vin-supply = <&vcc_5v>;
>  
> -		enable-gpio = <&gpio GPIOE_2 GPIO_ACTIVE_HIGH>;
> +		enable-gpio = <&gpio_ao GPIOE_2 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  		regulator-always-on;
>  
> 
Thanks for the fixes,
can you send 2 patches fixing each files instead ?

Thanks,
Neil
