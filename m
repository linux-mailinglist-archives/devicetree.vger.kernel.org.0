Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44CB4257A4F
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 15:25:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726292AbgHaNZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 09:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgHaNZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 09:25:48 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FC82C061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:25:47 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c15so5907110wrs.11
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 06:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:organization:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d2SsuyEGB+ZObGVb9yfZGDtDFzPB1+y7SiXM++94IYk=;
        b=Td1CZMKXG/thbimW3fIWY2cImVEQxrXqfVQwmBBhiSRsbrpU096bSSu8YA7MFwdzVg
         BORXoei4cUDdHVcffcfIkWUdm34AmEFrRWa0yLqBPXd/bO5iY8+c3xovP1EC/wRGJsoY
         2oawTdfYdIOtAftUTVWYEJmcpaMSbcpPSGo/iejUMAHKYjkPd+F5ol6X0BSY5t+Cy0/F
         Mkgn2JTe23oK/+wzzMUSYv3saOB9iYgqtx9itvqTmTc7L9VJ75Pow27t44HMusiVwfdC
         Hg8YvkcBJ6kJO7sTup4eQnFsjbllnN44L/8DJVah+zDQyAKkOPMRZYTDPzCJBMvWzq3S
         M8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=d2SsuyEGB+ZObGVb9yfZGDtDFzPB1+y7SiXM++94IYk=;
        b=jYnp7Cs7Sy44rIN0b6PITpkSBNhpGd4ru0ZQFE1qFV1ku/lHH4+zlwNA+7aOIKBMoH
         37UficCcZa+QcqF8+WUT0Bo+eulHFQym/OwvG5RARHLcTz/BF5G2+TKE+84FARMN/DMQ
         +C/y1EdUrAot1nIUZOldo6F0iEZliRtqNHOtYtucXdJsYTB3PFC1vLfoUOw3E38E0Erf
         +eikft+qBGMfzxOpnxjM4UffHlUqZFVpknz5huU/qZ5Z0S2pVtLk00d46H4sDWwWa9Cg
         yRY5ZOBRSc+xLqARw7ibAO3qruOybhPtweRW9QWeGD0+ytF85dzyYVyJjMWsMc32Vo4S
         l+ug==
X-Gm-Message-State: AOAM531uA8ZAXRdAnt1PM2AFSTtX0hKra8RogWdKKCBZMbNso4UWTKEc
        iCCL4B5BgziQyn5vii67qnZzsQ==
X-Google-Smtp-Source: ABdhPJyDWi0NW2OqrGxZOmvBgh98tCCCQYHtah0JaqeJk9lrBk/onPnGz30OGboTc56Cy22oq4jbUA==
X-Received: by 2002:a5d:4591:: with SMTP id p17mr1648056wrq.408.1598880345698;
        Mon, 31 Aug 2020 06:25:45 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5ce9:901f:7444:d44d? ([2a01:e35:2ec0:82b0:5ce9:901f:7444:d44d])
        by smtp.gmail.com with ESMTPSA id b1sm11594882wmj.8.2020.08.31.06.25.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 06:25:44 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Anand Moon <linux.amoon@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>
References: <20200831075911.434-1-linux.amoon@gmail.com>
 <20200831075911.434-2-linux.amoon@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <00690532-99ff-af1d-78f0-4b150803cbea@baylibre.com>
Date:   Mon, 31 Aug 2020 15:25:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200831075911.434-2-linux.amoon@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2020 09:59, Anand Moon wrote:
> Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
> support the RTC wakealarm feature for suspend and resume.
> Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
> timer device to prevent it being assigned to /dev/rtc0
> which disto userspace tools assume is a clock device.
> 
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> Changes v4
> --Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil.
> Changes v3
> --Drop the INI GPIOAO.BIT7 pinctrl.
> --Added missing RTC alias so that rtc get assigned correcly,
>   as suggested by Chris Hewitt.
> changes v2
> --Fix the missing INT (GPIOAO.BIT7) pinctrl.
> --Fix the missing rtcwakeup.
> --Drop the clock not required clock property by the PCF8563 driver.
> ---
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> index 34fffa6d859d..3e2aaa6f48e5 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
> @@ -19,6 +19,8 @@ / {
>  	aliases {
>  		serial0 = &uart_AO;
>  		ethernet0 = &ethmac;
> +		rtc0 = &rtc0;
> +		rtc1 = &vrtc;
>  	};
>  
>  	dioo2133: audio-amplifier-0 {
> @@ -477,6 +479,21 @@ hdmi_tx_tmds_out: endpoint {
>  	};
>  };
>  
> +&i2c3 {
> +	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	rtc0: rtc@51 {
> +		reg = <0x51>;
> +		compatible = "nxp,pcf8563";
> +		/* RTC INT */
> +		interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-parent = <&gpio_intc>;
> +		wakeup-source;
> +	};
> +};
> +
>  &ir {
>  	status = "okay";
>  	pinctrl-0 = <&remote_input_ao_pins>;
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
