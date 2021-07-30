Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A6643DBF1D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 21:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230455AbhG3Tin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 15:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230335AbhG3Tin (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 15:38:43 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D54F1C061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 12:38:37 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id x90so14663051ede.8
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 12:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sqq24+4MhdW8BcdPC+9dVyqVrbFpN6oyepTwHU0ZFuo=;
        b=luJ9L0u00/a/tCxI5puBILnCWcq5X70mijAA1PVhp/xBmQXpSalZ2RboFk8sayhtuH
         aQsD8i3M+fMEzreARhCsA7P5okOQsXWQo3yDuZ8xmx12Q+7xwDyEtlDIS8VyOVPh5lzt
         ERGfZQ9e6retakzdh6LHBCfMd/cOW15NGu31qzp/EbntNUIEHqvzusv02eeW2KBaJR0C
         H7cvpkt5lvDZZVgET9/uK48o6VcVJWvTqfp7EkHzkJ/F5rUiqSXRCnsAnLkU8MHM5ZfC
         ZGZ4LDr9PdMSaH6DywQTZqSCPSAko4i58dH4CevrukVDRFOfNHIVP6lX7aqqLX46sfDj
         Nl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sqq24+4MhdW8BcdPC+9dVyqVrbFpN6oyepTwHU0ZFuo=;
        b=flZNhWQSbqMc71f1E46kv0AAQMxSwi42ssnBj5QnsZuLkkVLulBOxtREEYQUnb+Zpt
         BjZS219phyViNKZ397NHU0xFBHMaSobf49pt9iZptnDI9LotOmTup4B30h2KAOY0gOUL
         Xuev1ziqu6JhmIOrOS1vXDp6c86kjY2n476shH65C1gco+/PhkmLeM7aT41JlEk/7XZ9
         KarM4OyMnpzRYJMvvCRi/EkS1KfZOI1yjECPv6c4PbvWmr+QPkbnvIgAJNZpAYfFdwk9
         ws5Ff7UU9dJqE0MqhiHuuKvGRAAYGelOQ57zV96AY5J6pxQtiool7FII82EGgO3FHlHK
         H8gA==
X-Gm-Message-State: AOAM530QkRKGVv1CQ+AkdWN1Ct8GXyIOoHmcu14D7y0d4GzF/+2ObRbu
        igyYBnTF2cyTqprfrPL6KPk=
X-Google-Smtp-Source: ABdhPJzoZNvWKwS8yyq1XzYiV6mjns/zTdeevPwq9NqWZkKo8Ae9Nq9K1PRkib/d4ahwfOL0vf4WHQ==
X-Received: by 2002:a50:fb05:: with SMTP id d5mr4665354edq.5.1627673916483;
        Fri, 30 Jul 2021 12:38:36 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id b26sm616759edu.27.2021.07.30.12.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 12:38:36 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add GPU node for rk3568
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
 <20210730164515.83044-4-ezequiel@collabora.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <b19aa876-f78b-f6af-39e9-ff37fc19f09a@gmail.com>
Date:   Fri, 30 Jul 2021 21:38:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730164515.83044-4-ezequiel@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ezequiel,

Some comments. Have a look if it's useful.

On 7/30/21 6:45 PM, Ezequiel Garcia wrote:
> Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
> which is based on the Bifrost architecture. It has
> one shader core and two execution engines.
> 
> Quoting the datasheet:
> 
> Mali-G52 1-Core-2EE
> * Support 1600Mpix/s fill rate when 800MHz clock frequency
> * Support 38.4GLOPs when 800MHz clock frequency
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 47 ++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index bef747fb1fe2..f4f400792659 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -121,6 +121,35 @@ opp-1800000000 {
>  		};
>  	};
>  

> +	gpu_opp_table: opp-table2 {

	gpu_opp_table: gpu-opp-table {

> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000>;
> +		};

Similar to cpu0_opp_table keep the same style and add an empty line
between nodes.

> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000>;
> +		};
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -332,6 +361,24 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	gpu: gpu@fde60000 {
> +		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> +		reg = <0x0 0xfde60000 0x0 0x4000>;

> +

remove empty lines

> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";

> +

dito

> +		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> +		clock-names = "core", "bus";

Not sure if it's possible, but could you keep them all a little bit in
the same order/style as arm,mali-400?

From arm,mali-utgard.yaml:

  clock-names:
    items:
      - const: bus
      - const: core


> +		operating-points-v2 = <&gpu_opp_table>;

> +

dito

> +		#cooling-cells = <2>;
> +		power-domains = <&power RK3568_PD_GPU>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> 
