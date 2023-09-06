Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41BDC793864
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 11:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbjIFJfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 05:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbjIFJfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 05:35:01 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D14F9199C
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 02:34:30 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so535354666b.3
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 02:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693992864; x=1694597664; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFD2tKig988p+nyLWDkmgUfiyTgw/5tkGCahsn8FoGo=;
        b=hzxHC1ZUKrAkALUnRu9yj0WtQ3IfwLIED78aJHF3pZRtlXjn+NSQudEbcdIAgJXqyF
         W7TBLb4ek3Y9mV4CQnbbrxnLjCR0j3drF8eSHcvNsnqWWZ6Pfx0XOMDcA8DLCduHwsuy
         TkwmqcrYKvcIe1hbqMlqpvwvE6gldcZ1USmomDKOti090i96tflp8lZznEZcCHxhrE6J
         7j/WR5IYt8V6uuZn4+mdHMJK0XcMpUh9TL/7SAro0p5XJ+leAqET8rWj77O1raxVbNk1
         /NLvtDgltwhJO8TvM+BOo/Dm1rqao8cJQd60Et+Rk+gMbdmD+UlbdbHBbf47LQX89n2y
         npyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693992864; x=1694597664;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FFD2tKig988p+nyLWDkmgUfiyTgw/5tkGCahsn8FoGo=;
        b=iUtY9hhKIvpBUMfVD8HSBCFILoWR5pnkl9DGx+PuzST74JaMyeg8DSmiGmyVUVKk6s
         bEsW91tFQzZ78jkmE1mzqCVbq15osDSUVWcU/Ma0xOLV+XVP0whb35PGtsjp2XD4uVKm
         gzz06BnQjqovw+N5n3I3WgKVb+FqZ/cs2DWzwacNTfnYyOFiat0PjuXoF5H5uKJ1EGAv
         knbVHuVa35qCM5s9UA2AXLp2ABgVTa2Ejrx51M5UC5a9eK87bewQ/golnH0Lu7XPVB9f
         iG6cNuSNCZPWujhd+PmP5KOvhD46iSibr9r4z2bUD58ZYXh99G0YOTViAx5oOPnW6VBd
         2hvg==
X-Gm-Message-State: AOJu0YwEe4/IFEpZeOuy2e3WmiXULTMzNqbEkpQA00sgLPZ7aFtMgJLB
        RJRRTSj2ueW0HaniDV0FehCr7Q==
X-Google-Smtp-Source: AGHT+IH6q0YbahWp/ZkV/kLa2NyEia2qzHpTs1IMS+0oSP9G5r5jyvzt5JtP17ezqw/WAp681nsONw==
X-Received: by 2002:a17:906:3017:b0:9a1:e1cf:6c6c with SMTP id 23-20020a170906301700b009a1e1cf6c6cmr1874832ejz.30.1693992864037;
        Wed, 06 Sep 2023 02:34:24 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id a6-20020a170906244600b0099cce6f7d50sm8872914ejb.64.2023.09.06.02.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 02:34:23 -0700 (PDT)
Message-ID: <2cb8069a-976b-0af4-a427-1e63ba4e7870@linaro.org>
Date:   Wed, 6 Sep 2023 11:34:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: add device-tree for Genio
 1200 EVK board
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>, Ben Lok <ben.lok@mediatek.com>
References: <20230904092043.5157-1-macpaul.lin@mediatek.com>
 <20230906092527.18281-1-macpaul.lin@mediatek.com>
 <20230906092527.18281-2-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230906092527.18281-2-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2023 11:25, Macpaul Lin wrote:
> +	edp_panel_fixed_12v: regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "edp_backlight_12v";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		enable-active-high;
> +		gpio = <&pio 96 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&edp_panel_12v_en_pins>;
> +	};
> +
> +	backlight_lcd0: backlight-lcd0 {
> +		compatible = "pwm-backlight";
> +		pwms = <&disp_pwm0 0 500000>;
> +		enable-gpios = <&pio 47 GPIO_ACTIVE_HIGH>;
> +		brightness-levels = <0 1023>;
> +		num-interpolated-steps = <1023>;
> +		default-brightness-level = <576>;
> +	};
> +
> +	backlight_lcd1: backlight-lcd1 {
> +		compatible = "pwm-backlight";
> +		pwms = <&disp_pwm1 0 500000>;
> +		enable-gpios = <&pio 46 GPIO_ACTIVE_HIGH>;
> +		brightness-levels = <0 1023>;
> +		num-interpolated-steps = <1023>;
> +		default-brightness-level = <576>;
> +	};
> +
> +	keys: gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		button-volume-up {
> +			wakeup-source;
> +			debounce-interval = <100>;
> +			gpios = <&pio 106 GPIO_ACTIVE_LOW>;
> +			label = "volume_up";
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +	};
> +
> +	can_clk: can-clk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <20000000>;
> +		clock-output-names = "can-clk";
> +	};
> +
> +	wifi_3v3: wifi-3v3-regulator {

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

