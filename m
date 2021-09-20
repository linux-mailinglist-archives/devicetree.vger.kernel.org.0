Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 972B54110E2
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 10:23:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235679AbhITIZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 04:25:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235667AbhITIZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 04:25:18 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36AA3C061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:23:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id q11so27349494wrr.9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jA3PUfcB8IXDnqpW4ECqSitXcmSlkqlE5fXiosOJTOo=;
        b=FaBXEgEx8+bjza3Q5tKipeVR8HxfZxSGKrtz34erCdsVUaddUBaUM5u7wf07thayrT
         GLcm3wylnWpQD5S13RgvSlLyqi8xoTvHovPr+7f8eLw695aCraDhGx82gkE9zmzjLK2U
         kELSfQIgQ2fvzWv2Bqa0Ppcz939SlHR7tnFKxRYJ09t1KaJXhYbKISVpbGytIPrRcpoB
         B3IcP0EBQpYOcuaI8OSajxSyK9/LfCFjt+TdJns1/pfpHfjPZJujUbccOkHAnrCb6phd
         mMIoD9a9ZgQbjz2zZBVhBtGbfy7p/IxgtXwzlM5gxk5RKtzA+ogoeYYkQKGTWvnY6LTB
         S4SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=jA3PUfcB8IXDnqpW4ECqSitXcmSlkqlE5fXiosOJTOo=;
        b=OR8h3509gVbV0IE0FRuBsm4bKk2xLv1QsBMezuuQZzUcgs65Bykqjb/BneqEHo/kY1
         gi8yamS+2dfpcKwMuGzpwFcP1tcT1r5bom6dhrCjbpcOa80n0YL/p9K5XL9puTOP8D4U
         wt81SfjJsIm94FCj6NP+W+8e/oxx5hlWe/GUvKSlA0vxvb82kK3+gpqqik56j1c0+Hi9
         D5WOEAw/ZnLW/HTnX5+cowDB3IW3vgW68OShMn9x+UME68kcUZIIZmEOqes3EMm1ysku
         VT9P/4PUdVvxY3sg24qlKJn4ACduTKnXTa57G1ydkik0dcasulyK9WN8bWx8NVj2sXYV
         yBrA==
X-Gm-Message-State: AOAM531uocPlUCv+KUdfmbK3fDxXKSP6qkYmady/NJalF+GVALt4uQg1
        kXCaFE9AKSBkLkIHXGpg0SiO9PURFlRwOA==
X-Google-Smtp-Source: ABdhPJyySDfp0Tt9vPlhMutYIwWn7eTnlpMOdM8CIDq3Yb1eS7BY8LfohWnuU/6TFFPPEdPUsNTHow==
X-Received: by 2002:a5d:64ab:: with SMTP id m11mr24719653wrp.343.1632126229497;
        Mon, 20 Sep 2021 01:23:49 -0700 (PDT)
Received: from [172.20.10.7] ([37.169.24.17])
        by smtp.gmail.com with ESMTPSA id y64sm11852384wmc.38.2021.09.20.01.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 01:23:49 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson-g12b-odroid-n2: add 5v regulator gpio
To:     Anand Moon <linux.amoon@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org
References: <20210919213135.4928-1-linux.amoon@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <c2487717-17e6-ec0b-9569-6f9a605d8fec@baylibre.com>
Date:   Mon, 20 Sep 2021 10:23:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210919213135.4928-1-linux.amoon@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 19/09/2021 23:31, Anand Moon wrote:
> As described in the Odroid-n2 & Odroid-n2-plus schematics,
> the 5V regulator is controlled by GPIOH_8 and in Open Drain
> since this GPIO doesn't support Push-Pull.
>

Fixes: c35f6dc5c377 ("arm64: dts: meson: Add minimal support for Odroid-N2")
Fixes: ef599f5f3e10 ("arm64: dts: meson: convert ODROID-N2 to dtsi")

> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 4f33820aba1f..e8a00a2f8812 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -99,6 +99,8 @@ vcc_5v: regulator-vcc_5v {
>  		regulator-max-microvolt = <5000000>;
>  		regulator-always-on;
>  		vin-supply = <&main_12v>;
> +		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
> +		enable-active-high;
>  	};
>  
>  	vcc_1v8: regulator-vcc_1v8 {
> 

Exact

I wonder how I missed this....

Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Thanks,
Neil
