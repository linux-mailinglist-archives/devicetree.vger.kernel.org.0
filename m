Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF8B3F2E95
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 17:08:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238570AbhHTPI4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 11:08:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240830AbhHTPIz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 11:08:55 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59661C061756
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:08:17 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id cq23so14416568edb.12
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KreEdl1ZV3JGsamvUXfmpDwGTb957yImRW3iLOmZShY=;
        b=iszij/dRpbCYWWJyDAgx5YIAP5gI6zxa/COCIkfGrGWjx/42gJkoK/SPQMWqxq1kia
         OTkJNzToAwSpSf2LpCpWxArRWltmfrT3LMl0S+ExJ2acsknh/fGL/CcMgmYgOsblF7t1
         orA1llJ3to+nscxqrk7BBiduvJR3NKzAOEhiqt7k4ehFbh5ORiMRHS0/1rZqB9D8nbOI
         l0nK1xJh8iyJi3pbybCd3wFZqpeq1GFgDxW63a2DncsntJfDG6J7ugcfeBWd1zK3zl4j
         QWl9RkvZkn3R9O9CTAFdU8KB/xHxkLfeVz+t9knMYQ42bd0FafZZmE/sflcdo2rYEXGQ
         kZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KreEdl1ZV3JGsamvUXfmpDwGTb957yImRW3iLOmZShY=;
        b=nx7DjpiIHy5T7OGO0jsWU4abZfYpCSV11RVKOOvf97JGnGdqgAi5YNSnTR75rbfHup
         76vTeQxffMA0zGicnrEPZMCingPNmUEaqQpWWJ1VFbe2DR0/dG+M2zGh/6bLDWZ78I53
         9j1sKHAPG/TZ+a12tTAEWb2dnxiMBXf7HwkrkUkMsvNOshcvihNN5Hr5115tz+YPiaM2
         SMVeI7yVK5pYtfGbQeSdXzGim/WiuAdUUTGYGZhr8gIm17TXb0CCLsUVZbMOdlHwfBhu
         P9fIYel4clrosYGVVm3XNOOb/NQylMUzUDBTw/Y+Vk8vKRA+oi4qSw6Gd9zD8SfC2ws5
         P4RQ==
X-Gm-Message-State: AOAM5310neKdRv2i1evtfly8UyI3CiZz2J9VjNf0LkEyn07CdaEz0dyD
        Q8z4wgcqIkFS03REBhkFqdY=
X-Google-Smtp-Source: ABdhPJzqL1/CLcL3fwkKW7ZpPFL18ypYqncPP4BflvE5b5CxSVHmHJcJPsswnwBV4fsxJpNnRzI9xQ==
X-Received: by 2002:aa7:db82:: with SMTP id u2mr23436183edt.299.1629472095878;
        Fri, 20 Aug 2021 08:08:15 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id v13sm3003445ejx.24.2021.08.20.08.08.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:08:15 -0700 (PDT)
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: Add GPU node for rk3568
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-4-ezequiel@collabora.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <8574d096-94a7-296d-f9e8-a2e67ed80e2f@gmail.com>
Date:   Fri, 20 Aug 2021 17:08:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210805025948.10900-4-ezequiel@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ezequiel,

Some more comments. Have a look if it is useful.

On 8/5/21 4:59 AM, Ezequiel Garcia wrote:
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
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index bef747fb1fe2..f8173ba63be0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -121,6 +121,40 @@ opp-1800000000 {
>  		};
>  	};
>  

> +	gpu_opp_table: gpu-opp-table {

	gpu_opp_table: opp-table-1 {

Excuse for the inconvenience, but rob+dt just made a patch for opp last
month...
See opp-v2-base.yaml:
'^opp-table(-[a-z0-9]+)?$'

[PATCH v3 3/3] dt-bindings: opp: Convert to DT schema
https://lore.kernel.org/lkml/20210720144121.66713-3-robh@kernel.org/

===
A look in the manufacturer tree we can expect one more opp table in the
number sequence.
	npu_opp_table: opp-table-2 {}
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi


> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000>;
> +		};
> +
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000>;
> +		};
> +
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -332,6 +366,22 @@ power-domain@RK3568_PD_RKVENC {
>  		};
>  	};
>  
> +	gpu: gpu@fde60000 {
> +		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> +		reg = <0x0 0xfde60000 0x0 0x4000>;

> +

Maybe remove this empty line as well?

> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";
> +		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> +		clock-names = "core", "bus";
> +		operating-points-v2 = <&gpu_opp_table>;

> +		#cooling-cells = <2>;

Not a big issue, but things with "#" are only needed for dt
interpretation (not a real property). I try to drop them as far down the
list when not sort alphabetically or connected to a real property.

> +		power-domains = <&power RK3568_PD_GPU>;

> +		status = "disabled";
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> 
