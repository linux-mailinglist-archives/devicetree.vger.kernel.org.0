Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D336160E70A
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 20:14:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbiJZSOE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 14:14:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233972AbiJZSOD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 14:14:03 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70811ACA30
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 11:14:01 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id j6so7798175qvn.12
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 11:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=euZ0kBBCpAPq2o8o5kLMLvRDLb511ZyIjxtr+z8U4AU=;
        b=JFIQznT+VayHy813HE35wzoCULmXeSGZsYdxBB0KdX/u4Pc+Q9vAOH6PseCmf/9PuI
         7poinWgz1maFdbtXcp6votEdiJvQ0a83Lz+d6BM+WtbDYQT9gw2DmpU+cO2P6zCNmKwS
         agTJ0yKxHnOdOaHIL8vTKPpNIBlq84Mr8BtcXjs3zyrl1VcAnKpH7/+DiWsedJqeVl8d
         h36gxPEmS1hKeiotvGihliL/0qMcq6jMjQdguwbgcyglBKw7sH91Vl4IQ6C7mDfYiz9Y
         aY2HKQhMbiSFSzOYyZts2DpqNW1w3DvLJPC+jgsv2s/eLwODhoi+FwrPs3YDk6F4E/81
         2QkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=euZ0kBBCpAPq2o8o5kLMLvRDLb511ZyIjxtr+z8U4AU=;
        b=71+8QOdS65bb8Gj0a17w4VO5g6HFo8SWeI/F79oKyASJNWAJZrvxpI5GJoLMfshEKd
         KY/m//kmm+URMdJca4ZJD6+RVHcyaHOvVe0J+m+iZh6sdiAGId0nl/94OnYn8m/5PIX9
         uvhI6ohYXQhXm5+SgT9ObpVBtgmD8azrE08a2iaryLp6tJe3CxPSuxWMQE35N1zbM4qF
         p9AV6trSksoX2iC7sA4A8apmvuYncvFMKDmmH2iSWIlU0hzMNlzMHIsteZUCjrMrG1yb
         S+eC+VglqxeIJNH6EvO4v8IPQfiqE23ChOJ6YGA5tHMgt4UcYELVWp8QYrXdhrB1eL4K
         dqug==
X-Gm-Message-State: ACrzQf2+QrwrZa0GE2H9ozltYzm2fRmQftOpHU1kn48DoxoQD0G+VTFw
        Blsu/90qz4CmmmKe+HCsE3SKbg==
X-Google-Smtp-Source: AMsMyM76BykD9PyEu+Dx7/PEElgAS1+kldlvdT8ESxptB6jpdmKm3iSesHHTQG42Y0t3JnNgw6YzRA==
X-Received: by 2002:a05:6214:e6f:b0:4b3:f41c:a59 with SMTP id jz15-20020a0562140e6f00b004b3f41c0a59mr37424438qvb.59.1666808040577;
        Wed, 26 Oct 2022 11:14:00 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id f12-20020a05622a114c00b0039cde2cd510sm3574544qty.28.2022.10.26.11.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 11:13:59 -0700 (PDT)
Message-ID: <3cc78884-79f1-0f08-e555-9b46f46d54f5@linaro.org>
Date:   Wed, 26 Oct 2022 14:13:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] arm: dts: imx: e60k02: Add touchscreen
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alistair Francis <alistair@alistair23.me>
References: <20221026173015.1172816-1-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026173015.1172816-1-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2022 13:30, Andreas Kemnade wrote:
> Add the touchscreen now, since the driver is available.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> runtime/dtbs_check depends
> https://lore.kernel.org/linux-devicetree/20221026114908.191472-1-alistair@alistair23.me/T/#t
>  arch/arm/boot/dts/e60k02.dtsi              | 12 +++++++++++-
>  arch/arm/boot/dts/imx6sl-tolino-shine3.dts | 14 ++++++++++++++
>  arch/arm/boot/dts/imx6sll-kobo-clarahd.dts | 14 ++++++++++++++
>  3 files changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> index 935e2359f8df..4f36cc181a52 100644
> --- a/arch/arm/boot/dts/e60k02.dtsi
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -104,7 +104,17 @@ &i2c2 {
>  	clock-frequency = <100000>;
>  	status = "okay";
>  
> -	/* TODO: CYTTSP5 touch controller at 0x24 */
> +	touchscreen@24 {
> +		compatible = "cypress,tt21000";
> +		reg = <0x24>;
> +		pinctrl-names = "default","sleep";
> +		pinctrl-0 = <&pinctrl_cyttsp5_gpio>;
> +		pinctrl-1 = <&pinctrl_cyttsp5_gpio_sleep>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
> +		reset-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
> +		vdd-supply = <&ldo5_reg>;
> +	};
>  
>  	/* TODO: TPS65185 PMIC for E Ink at 0x68 */
>  
> diff --git a/arch/arm/boot/dts/imx6sl-tolino-shine3.dts b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> index e3f1e8d79528..82d9ed91df92 100644
> --- a/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> +++ b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
> @@ -52,6 +52,20 @@ &iomuxc {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_hog>;
>  
> +	pinctrl_cyttsp5_gpio: cyttsp5_gpio_grp {

No underscores in node names.

Best regards,
Krzysztof

