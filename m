Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FAA5639614
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 14:23:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiKZNX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 08:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbiKZNX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 08:23:27 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A8A272C
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 05:23:26 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id bn5so8058298ljb.2
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 05:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n/1roXOdySIxs1dS/N1VkID/IKrNoi7dXAED3KVDP+E=;
        b=WFpJa/iywGsIj1TGouF0pb+548r06Vjwgcd5EyzUWhr333V4WJ1P7qdra6s5sRINCt
         +cgeNylffxGiqUiXajyojXWDCDQ76Sm9nTx4BJRiQX0wqKt7UX+O3BT6F20KEZ5YlNCb
         Xx91Uhwgwvrmfw6V7mi7qZTrhcIPHvQwoLRWWa7YcFNLcyiDgwWcPod1t8ybfqT8vLK7
         V4eOT7aiSb3A9D10ownYCGBHG5D0jRetqlnWtOMteTwZn8dOqKPEQliiGv3n73dJzfrF
         C49OoeafhrLgsmZoB7oH1Lh0xoE75lfdjKc6YggvNqZvIzSTBSZTQjJl9jX6IVvCets8
         35/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n/1roXOdySIxs1dS/N1VkID/IKrNoi7dXAED3KVDP+E=;
        b=c3PCstkCKH1tVbp8uiaew4JB31APZgyrPDLXQ85HHSrM3GD43Tre6au8CiMSY1appt
         JE0QkURj3tjexfVLN8Ajvch8bgPw7ZpYgMVqA9OQOp4LSu6TRFXiznAqoAPW17lLqQA6
         gOw0Vv3Xua2WZE+vFlT2b5+0zWeCR7OYeDdnjUJSWMPsghKyVu0FMzH02LVqFc52lSVz
         mz9P/XObri9EdAxYz4Tm39SagLxFVUTrPmYS7UKAlpBFJyZRDKY41COsy++pzhdhxVFu
         auCuMxyxTniJOOOzyd/uJYQlc2P0NQnYkqgKtGZDDoNwU/ojXNy39BVoNebE7/jI3Iuu
         NfGw==
X-Gm-Message-State: ANoB5pmFvGqQAyuNiqS9gQQxC/9ZTxhPbiPOi7Cqp+EiSHLHsPVBDCpa
        vzCRVLOgQ3yu339CS5HvR5zhQg==
X-Google-Smtp-Source: AA0mqf5Ootwrl9wuLxNIE5DbCYxf+n8l6mn0DsE3XLw42RQMRT5o+l7A+yTMzswTsc+WvrxTVN8HvA==
X-Received: by 2002:a2e:be8a:0:b0:26f:c081:9aed with SMTP id a10-20020a2ebe8a000000b0026fc0819aedmr13790332ljr.222.1669469005139;
        Sat, 26 Nov 2022 05:23:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c3-20020ac25f63000000b004a4754c5db5sm923547lfc.244.2022.11.26.05.23.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 05:23:24 -0800 (PST)
Message-ID: <1dcd1ac0-6a5f-6973-1ade-5480d81cfcac@linaro.org>
Date:   Sat, 26 Nov 2022 14:23:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] arm64: dts: rockchip: add Hynitron cst340 for Anbernic
 353 series
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221126011432.22891-1-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/11/2022 02:14, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Hynitron cst340 touchscreen driver to the Anbernic
> RG353P and RG353V devices. Note the RG353VS device does not have a
> touchscreen.
> 
> https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 20 +++++++++++++++++++
>  .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 13 ++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index 63cff402f3a8..06222dead921 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -95,6 +95,19 @@ &i2c2 {
>  	pintctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> +
> +	touch@1a {
> +		compatible = "hynitron,cst340";
> +		reg = <0x1a>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-0 = <&touch_rst>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x = <640>;
> +		touchscreen-size-y = <480>;
> +		status = "okay";

Was it disabled anywhere?

> +	};
>  };
>  
>  &pinctrl {
> @@ -104,6 +117,13 @@ spk_amp_enable_h: spk-amp-enable-h {
>  				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	touch {
> +		touch_rst: touch-rst {
> +			rockchip,pins =
> +				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
>  };
>  
>  &rk817 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index 885234a023e1..dc3fc67f5853 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -82,6 +82,19 @@ &i2c2 {
>  	pintctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> +
> +	touch@1a {
> +		compatible = "hynitron,cst340";
> +		reg = <0x1a>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-0 = <&touch_rst>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x = <640>;
> +		touchscreen-size-y = <480>;
> +		status = "okay";

Same question.


Best regards,
Krzysztof

