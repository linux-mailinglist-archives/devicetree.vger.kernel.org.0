Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D5A75A7E13
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:56:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231621AbiHaMz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:55:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbiHaMzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:55:44 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75BDC76457
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:55:43 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id k18so8125905lji.13
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=+IhED3teTri0Sdttoc4/S6GHg1CUzlM2Szl6JMF0ZGE=;
        b=OzYzmD+sLQOnLPZP20pPdgfq60bsFJikIaHMujhKVxUVf0aZ1RR+WNQDb84u3Sixdj
         o+tMmdcRWDnzKwZAOenMWIKrsbBRaUxR4MsXyXsL/qIBoCFXRHh1/HloUgS4AOrvii5b
         j8KNikXuOYXoOboODCxG1RRuXTC+76keOUlv3Nha5KTHomEWzrCh+CbYPnfmLioa9k0C
         +bqONKe1mA3Jkh4UNUi2MCjT7+dzTcI4Pq8aCM1sjVFcUoAGzg23JdjVRJwjWxgRns0Z
         Rn1pq7PbdA+CjqXUXtgpfJ6s4GsSYqlsi4q2BcWjRKcQaONCWuGkJViJNB5E+mj592gu
         8ZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=+IhED3teTri0Sdttoc4/S6GHg1CUzlM2Szl6JMF0ZGE=;
        b=yt0XANuQFW9m8y5I2S8y/fxV8ATNXL/TAvFnMwmsa1S+V2Yl6/KJtuAtXKpX7gCxNn
         CUcMsDKp4ipK3p1Ss/TR0sIpr9oZDmjv/NGRukoE5Y9y/IIXweIaOHcph1rFWhez8IUj
         9nlhPwmXevMS7Yq87CiIJRgWfxOSP11bsiA543ntOn/xaRulTcPAQJQptuAP1rU1ETod
         fAJx2n00aWty5xV0lxBPVQp5nZG8Cxgds1/zOBGAe2lns3w5+PVRW4sIigqDT9Jw6a8a
         +wnzG33KOHmA1nYZvqvL4JuqJ2aZMtuv1TsBzZJFCDUqi7Yx0PRro8GPV5CG2PZhy5Jm
         8RTg==
X-Gm-Message-State: ACgBeo1c1fmQCj6lQPN8TLOrGeE0UTLoiT+SYVjoLSmC1y3slMqUpHDc
        vXLfsib+V1ZFTd8/J+1jKUL6Wg==
X-Google-Smtp-Source: AA6agR6KAU8wxt9S98ZVuhf8zTiWWTGQq8/4ks5sCWoxwjkmMs5ZQSN0HTj4fXW7TguKtKrAN5xxpA==
X-Received: by 2002:a2e:aa13:0:b0:264:eb98:b7fd with SMTP id bf19-20020a2eaa13000000b00264eb98b7fdmr4237305ljb.26.1661950541595;
        Wed, 31 Aug 2022 05:55:41 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id k8-20020a2ea268000000b0025e304903f5sm2124285ljm.6.2022.08.31.05.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 05:55:41 -0700 (PDT)
Message-ID: <e2eb36e0-d28b-25b5-3e09-3ea19a2f5ae4@linaro.org>
Date:   Wed, 31 Aug 2022 15:55:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 5/6] arm64: dts: imx8ulp: add mailbox node
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aisheng.dong@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220831100016.3649852-1-peng.fan@oss.nxp.com>
 <20220831100016.3649852-6-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831100016.3649852-6-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 13:00, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add Sentinel (MU)Message Unit, Generic MU nodes.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 26 ++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> index abec8ad4a8de..54ccf31896b7 100644
> --- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -152,6 +152,15 @@ soc: soc@0 {
>  		#size-cells = <1>;
>  		ranges = <0x0 0x0 0x0 0x40000000>;
>  
> +		s4muap: mailbox@27020000 {
> +			compatible = "fsl,imx8ulp-mu-s4";
> +			reg = <0x27020000 0x10000>;
> +			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
> +			#mbox-cells = <2>;
> +			status = "okay";


This is not needed.

> +		};
> +
> +

Just one blank line.

>  		per_bridge3: bus@29000000 {
>  			compatible = "simple-bus";
>  			reg = <0x29000000 0x800000>;
> @@ -159,6 +168,23 @@ per_bridge3: bus@29000000 {
>  			#size-cells = <1>;
>  			ranges;
>  
Best regards,
Krzysztof
