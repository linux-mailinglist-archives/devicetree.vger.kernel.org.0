Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2498C5A94C4
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:37:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232830AbiIAKhk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:37:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232418AbiIAKhj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:37:39 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5547E1169
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:37:38 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 281AbS22065539;
        Thu, 1 Sep 2022 05:37:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1662028648;
        bh=XL496xjeqwW/7AhljoSMVF26hUmJHTRpA70q680D6Hw=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=kWXawfdoRoDQvRT3d5B9pIs1neRXfQJNovaKPZchGNkqE+f8OqyqXtzsARisD6d9C
         GTwi5zP+0Hva/I7qa+NeNJIDxDumFa6ODJWMfdPTeNvcGjCSjfw2CADazGoQgxwGxA
         xIsmHjdKMnACBAwJRSJhFO/hOGkwH4su4owSlNhU=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 281AbSjH070830
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 1 Sep 2022 05:37:28 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 1 Sep
 2022 05:37:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 1 Sep 2022 05:37:28 -0500
Received: from [172.24.145.182] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 281AbQsO036102;
        Thu, 1 Sep 2022 05:37:27 -0500
Message-ID: <0526f49c-0905-d455-5800-2dc9fd959c61@ti.com>
Date:   Thu, 1 Sep 2022 16:07:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-am65: Add general purpose
 timers for am65
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, <devicetree@vger.kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>,
        Nishanth Menon <nm@ti.com>
References: <20220830070750.30640-1-tony@atomide.com>
 <20220830070750.30640-3-tony@atomide.com> <Yw7sI81Nzo5koM6c@atomide.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <Yw7sI81Nzo5koM6c@atomide.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31/08/22 10:35, Tony Lindgren wrote:
> * Tony Lindgren <tony@atomide.com> [220830 07:09]:
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> @@ -271,6 +271,138 @@ main_spi4: spi@2140000 {
>>  		#size-cells = <0>;
>>  	};
>>  
>> +	main_timer0: timer@2400000 {
>> +		compatible = "ti,am654-timer";
>> +		reg = <0x00 0x2400000 0x00 0x400>;
>> +		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&k3_clks 23 0>;
>> +		clock-names = "fck";
>> +		assigned-clocks = <&k3_clks 23 0>;
>> +		assigned-clock-parents = <&k3_clks 23 1>;
>> +		ti,timer-pwm;
>> +	};
> 
> Oops the power-domains are missing for the timers. This should
> have power-domains = <&k3_pds 23 TI_SCI_PD_EXCLUSIVE>.
> 
> Can we tag all the timers with TI_SCI_PD_EXCLUSIVE, or do some
> always need to be TI_SCI_PD_SHARED?
> 

Please tag TI_SCI_PD_EXCLUSIVE for main domain timers. Individual boards
can override based on need basis

-- 
Regards
Vignesh
