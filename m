Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7A5D490A61
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 15:31:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239123AbiAQObZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 09:31:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239602AbiAQOav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 09:30:51 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B74C06173E
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:30:50 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id f141-20020a1c1f93000000b003497aec3f86so23140323wmf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 06:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+iR+xqLn4ZA/GgQGnZu/dK+PUE+Bi1dnz/SKyfphrsw=;
        b=YksXckYFme2RHIMHoHrPqpFRTQIn6dwj6tbKYWd0JJb20Y3P1MMFSu0ck4f4kDxJrq
         IcIuDPplD6b3zCQChjSM2fnnBH3/DDCcPQ5dYEdRXzMlABv+UuH1NiuQEWV0Dr3/+MzC
         E94+YE8ZQisz1rE2mbNWakLMrq7/VmY0VFRGlPiQ8Mr/kN2iJ7QiPM0C5/JWgqKP0pnN
         Lc1G75IgbfoSEiTec6D0MQVG4WwcT9NVWfJg1t6DVUMHtNxLlP4H2dYr1L0S4nqI3dEv
         3bZpYHh5kS4odyWB2GmYSOLof8n7Yq+hPnAR7j+XXLruY9akvQRYKnhmHeM6P1VrH7AH
         Gtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=+iR+xqLn4ZA/GgQGnZu/dK+PUE+Bi1dnz/SKyfphrsw=;
        b=tGZtiuz8oL18xtM6U0nlJbY52uVLCtBo34NHSNPrRX0uMGqSsJRmhPaB5s3x472RFc
         jkL1dDjYwXEe6xBJK5m3YLHoUr5cGno4aJ6SDkSxOPtmjX13h2bCUIAYfb1AMxNhYESh
         9qM5+fwod/J6eBxioidH386LEJSEvpBGdLTWJG5lRi2nNIuk5mxwk2oAU5Erz9t9BXNz
         d35vfZUbwRW+iqF+IW1ihHU3JZHgCYmibw6gjK4fXDVnM+UYab1fPFRiEhM5zz5vnML4
         s5MzhYRoUKYzdn/LYfpeXBI0ZQJXQqMdsd3njpUI5u1p+UbTb6FWyLaR3BDvAfFeQbR3
         zFvQ==
X-Gm-Message-State: AOAM533HqpSzw6lRzPFV8DS4QfF+F4mGg+ChZAin/EAWDxooerg3Z+gr
        yOHhq6Rc7lkWZTfOg5VZLQl/jA==
X-Google-Smtp-Source: ABdhPJzRsacQaPlAcYkmmUq1iTAa0t7SHBvG/AXsT2UMm1nGzdbQK6xp6O3BzDQpBYliXghu7ZcNEg==
X-Received: by 2002:a05:6000:110d:: with SMTP id z13mr19925997wrw.662.1642429849388;
        Mon, 17 Jan 2022 06:30:49 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:c004:9fe1:fbda:2d0c? ([2001:861:44c0:66c0:c004:9fe1:fbda:2d0c])
        by smtp.gmail.com with ESMTPSA id k31sm12542420wms.15.2022.01.17.06.30.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 06:30:48 -0800 (PST)
Subject: Re: [PATCH 2/3] arm64: dts: meson: move pwm_ef node in P212 dtsi
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220113041746.16040-1-christianshewitt@gmail.com>
 <20220113041746.16040-3-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <d82549cf-01cc-68de-8af3-763b94ba6ef6@baylibre.com>
Date:   Mon, 17 Jan 2022 15:30:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220113041746.16040-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 05:17, Christian Hewitt wrote:
> Cosmetic-only change to move/alpha-sort the node.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../boot/dts/amlogic/meson-gxl-s905x-p212.dtsi   | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> index c635e5858929..b3d7b8613d6d 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dtsi
> @@ -97,6 +97,14 @@
>  	pinctrl-names = "default";
>  };
>  
> +&pwm_ef {
> +	status = "okay";
> +	pinctrl-0 = <&pwm_e_pins>;
> +	pinctrl-names = "default";
> +	clocks = <&clkc CLKID_FCLK_DIV4>;
> +	clock-names = "clkin0";
> +};
> +
>  &saradc {
>  	status = "okay";
>  	vref-supply = <&vddio_ao18>;
> @@ -170,14 +178,6 @@
>  	vqmmc-supply = <&vddio_boot>;
>  };
>  
> -&pwm_ef {
> -	status = "okay";
> -	pinctrl-0 = <&pwm_e_pins>;
> -	pinctrl-names = "default";
> -	clocks = <&clkc CLKID_FCLK_DIV4>;
> -	clock-names = "clkin0";
> -};
> -
>  /* This is connected to the Bluetooth module: */
>  &uart_A {
>  	status = "okay";
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
