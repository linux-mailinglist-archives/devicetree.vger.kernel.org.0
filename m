Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C46ED265716
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 04:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725798AbgIKCrh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 22:47:37 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:52926 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgIKCrg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 22:47:36 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08B2lT69001288;
        Thu, 10 Sep 2020 21:47:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599792449;
        bh=5C3n2ifpxrT79tXAyyVK3erCrf7btBkT3WK13Eaxp2s=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=CDDzIjjMX+l0PbwvSzod1v7ljTHGoTvevREDyEYi0f1ai7HA+ezU29cQBGKdnXp2V
         iutUlcgxpDF+yywaGtiYfvkYxkvNPP1OY6/h6LgfJrPy9l8hdBMvGjAAKgDXEUZAyZ
         fmHl3du0yKgSdMr+gSyDZie75w4SlZ2tAk/xz+eo=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08B2lT7F017863
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 21:47:29 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 21:47:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 21:47:29 -0500
Received: from [10.250.66.47] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08B2lRXY049564;
        Thu, 10 Sep 2020 21:47:27 -0500
Subject: Re: [PATCH v3 4/5] arm64: dts: ti: Add support for J7200 SoC
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-5-lokeshvutla@ti.com>
 <20200910171928.xzfwhix46lcsiup7@akan>
 <83122b2e-4dba-a2f9-b722-e510acfa9135@ti.com>
 <20200910182020.t4xkpgyzu5ryxkp5@akan>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <2f06e21a-798d-cbe2-80cc-202a8069ce9f@ti.com>
Date:   Thu, 10 Sep 2020 21:47:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910182020.t4xkpgyzu5ryxkp5@akan>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/10/20 1:20 PM, Nishanth Menon wrote:
> On 12:54-20200910, Suman Anna wrote:
> [...]
> 
>>>> +		};
>>>
>>> I think we could introduce base infrastructure stuff like intr and
>>> inta nodes here? Also, the gpio_intr?
>>
>> FYI, they are currently being added in Patch 1 from Grygorii's "[v2,0/4] arm64:
>> dts: ti: k3-j7200: add dma and mcu cpsw" series,
>> https://patchwork.kernel.org/cover/11763711/
>>
>> The overall series seems to have some dependencies, so better to separate out
>> those nodes and include as an additional add-on patch to this series, atleast it
>> can unblock all others who use the TI-SCI Interrupt node.
>>
> 
> There is dependency on udma which in turn needs chipid stuff merged,
> but I dont see anything preventing inta intr (which are infrastructure
> components) from being merged in. It is not just udma driver that uses these
> infrastructure.

Yep, I also meant the same.

> 
> [...]
>>>> +
>>>> +/ {
>>>> +	model = "Texas Instruments K3 J7200 SoC";
>>>> +	compatible = "ti,j7200";
>>>> +	interrupt-parent = <&gic500>;
>>>> +	#address-cells = <2>;
>>>> +	#size-cells = <2>;
>>>> +
>>>> +	aliases {
>>>> +		serial0 = &wkup_uart0;
>>>> +		serial1 = &mcu_uart0;
>>>> +		serial2 = &main_uart0;
>>>> +		serial3 = &main_uart1;
>>>> +		serial4 = &main_uart2;
>>>> +		serial5 = &main_uart3;
>>>> +		serial6 = &main_uart4;
>>>> +		serial7 = &main_uart5;
>>>> +		serial8 = &main_uart6;
>>>> +		serial9 = &main_uart7;
>>>> +		serial10 = &main_uart8;
>>>> +		serial11 = &main_uart9;
>>>> +	};
>>>> +
>>>
>>> might be nice to leave a chosen { }; here to indicate board
>>> files fill it up.. just to maintain consistency with rest of SoC dtsis?
>>
>> Doesn't serve any purpose IMO. I remember commenting about that blank node to
>> remove it during some earlier reviews.
> 
> I know. just consistency for board files to add things in -> you can
> see similar usage else where as well. if we are going to drop it, we might
> drop from am65 and j721e as well. for bootloaders that look for the node, it
> tends to be consistently present OR not.. I'd rather they be consistently
> be available than to deal with mix for downstream boards. No strong feelings
> either way, but.. lets stay consistent throughout.
> 
> $ git grep 'chosen { };' arch/arm64/boot/dts/
> arch/arm64/boot/dts/apm/apm-merlin.dts: chosen { };
> arch/arm64/boot/dts/apm/apm-mustang.dts:        chosen { };
> arch/arm64/boot/dts/arm/foundation-v8.dtsi:     chosen { };
> arch/arm64/boot/dts/arm/fvp-base-revc.dts:      chosen { };
> arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts:     chosen { };
> arch/arm64/boot/dts/hisilicon/hip06-d03.dts:    chosen { };
> arch/arm64/boot/dts/mediatek/mt8173-evb.dts:    chosen { };
> arch/arm64/boot/dts/qcom/msm8916.dtsi:  chosen { };
> arch/arm64/boot/dts/qcom/msm8992.dtsi:  chosen { };
> arch/arm64/boot/dts/qcom/msm8994.dtsi:  chosen { };
> arch/arm64/boot/dts/qcom/msm8996.dtsi:  chosen { };
> arch/arm64/boot/dts/qcom/msm8998.dtsi:  chosen { };
> arch/arm64/boot/dts/qcom/qcs404.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sc7180.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sdm630.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sdm660.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sdm845.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sm8150.dtsi:   chosen { };
> arch/arm64/boot/dts/qcom/sm8250.dtsi:   chosen { };
> arch/arm64/boot/dts/ti/k3-am65.dtsi:    chosen { };
> arch/arm64/boot/dts/ti/k3-j721e.dtsi:   chosen { };
> 

Yeah ok to add back then.

regards
Suman

