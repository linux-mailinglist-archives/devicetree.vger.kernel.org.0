Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5584604EFF
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 19:39:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbiJSRj0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 13:39:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231407AbiJSRjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 13:39:09 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0385CBCBB1
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 10:39:03 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id k2so41728154ejr.2
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 10:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZSg9wcbNbcSOzspwRfzUTkVyTxhvEyAzYbLBRttaf6c=;
        b=ZiBfOirqBI2qE4AiRDRnuhq1ob5CIfxeotj1301D57aJfCNREHqXeIQwvVp9IA9Y1Z
         VVvW4ZXNqJ5Y/vpWF98UbLmz5DhIyi14Apizp1Zlr9+JF9bT/nQqnyn3e6hNI4rcaF3U
         5RZpeMajMDB2QUin4L2NaiUzethvwDdEuT8yRq2rA8z6DT3MwE/hJsiKp6Q37x+wg2yr
         fsBK2FFVFOT252oMIV0TZFFYBSyjbG17Z73UUVlpO6H/jw7sbbAhZOmFqTSw3veZNuIO
         q8EIkpcYvoNW1gN4tyenhNFraY5ojzG7dAPYu0P/OqlPkzNfuqOL6AqTqxrJT5PtTWbs
         2QXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSg9wcbNbcSOzspwRfzUTkVyTxhvEyAzYbLBRttaf6c=;
        b=3d8pxybl1hK3rdxQVwhltr3Xuhxhkm4SwyvH0/sRWpcypnCZLPKsB4aCbHGY+lhkIg
         XuughGkagSUMq9i5yhDR1itm7HO6cMJuQKyuzx/A+Uc0sFbxdCrZNdf3ncADpPgwmY94
         xsoYnyIkkbZyEv3QWCLmnR1kkBTwp6bndbZSmvAgKexAcL4oLDxJnEYgkg/8mSTJK/yq
         oKlIgvKGfmsqCP2hfg6XGdjwW+aiq3KhO58mK6ool37aeLIwioXZKby3vvYpm8kOMagU
         8AQiJPBL+VjCUvK0+bZdiFkN01XaL4+Xjd24AarLWsJ4QMrso6oVmPRUVzaEx+/0Z1WS
         A7VA==
X-Gm-Message-State: ACrzQf0D4BZilitREU+odH5ZvGsJiZE9oRfKI6VL6DxVhomYqmutOWhv
        9G3+V/7x1Teyg7CjjqWfsi4=
X-Google-Smtp-Source: AMsMyM6aAlkq7HSlsQwfhnYhFYnY0TG4ZY4rvi90moQGO1x5RG+zkv2DRiNziDFlFUNhxqhMx/Cn7A==
X-Received: by 2002:a17:907:b07:b0:78d:ce2b:1999 with SMTP id h7-20020a1709070b0700b0078dce2b1999mr8022259ejl.267.1666201142104;
        Wed, 19 Oct 2022 10:39:02 -0700 (PDT)
Received: from [192.168.2.4] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id f11-20020a170906738b00b0073dc8d0eabesm9411681ejl.15.2022.10.19.10.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 10:39:01 -0700 (PDT)
Message-ID: <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
Date:   Wed, 19 Oct 2022 19:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To:     =?UTF-8?Q?Michele_Zuccal=c3=a0?= <ardutu@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
Content-Language: en-US
From:   Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Y1AqBnPSyu7PpiwP@deskilmich.example.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Added Cc: clabbe@baylibre.com

On 10/19/22 18:47, Michele Zuccalà wrote:
> The cryptographic hardware of the rk322x is compatible with the one present in the rk3288.
> 
> Add the respective node to the device tree.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Michele Zuccalà <ardutu@gmail.com>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> index ffc16d6b9..b381fc2a0 100644
> --- a/arch/arm/boot/dts/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rk322x.dtsi
> @@ -132,6 +132,17 @@ display_subsystem: display-subsystem {
>  		ports = <&vop_out>;
>  	};
>  
> +	crypto: crypto@100a0000 {

> +		compatible = "rockchip,rk3288-crypto";

Hi,

Compatible strings must SoC orientated.

Something like:
compatible = "rockchip,rk3228-crypto", "rockchip,rk3288-crypto";

This string must be add to YAML document:
https://lore.kernel.org/linux-rockchip/20220927075511.3147847-25-clabbe@baylibre.com/

The status of that serie is unknown to me.
Not sure by who or when that is going to be merged.

Johan

> +		reg = <0x100a0000 0x4000>;
> +		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_M_CRYPTO>, <&cru HCLK_S_CRYPTO>,
> +			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC>;
> +		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
> +		resets = <&cru SRST_CRYPTO>;
> +		reset-names = "crypto-rst";
> +	};
> +
>  	i2s1: i2s1@100b0000 {
>  		compatible = "rockchip,rk3228-i2s", "rockchip,rk3066-i2s";
>  		reg = <0x100b0000 0x4000>;
