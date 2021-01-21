Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5424F2FEF57
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:45:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387512AbhAUPpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:45:09 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:42900 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387493AbhAUPoy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:44:54 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFh79f122908;
        Thu, 21 Jan 2021 09:43:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243787;
        bh=WrQobewGlIn8sKRqx821bIVl+itKgFtAGXEKeSHFnuU=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=pHA0oum/m2nel8TT8M6R8PE9xtfLTUHWw+KGQt+cHzILxOy0cczgy7hEbSlgTuKbK
         3lCh4NbPDBW6m1Bjn47XujKq+4lcMqNMj6Pp0c0SsMNlYEryCxLNXhCTA3yMoKGNCk
         wKIzGu6QsfQowW/QhfJtAjkBbjT0M9ROvRYIyGy0=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFh7fq023360
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:43:07 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:43:07 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:43:07 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFh6wd002050;
        Thu, 21 Jan 2021 09:43:06 -0600
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG nodes
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <kristo@kernel.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-2-s-anna@ti.com>
 <20210121153757.kuknwzrzc3xmnase@machine>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <a664de6c-3018-c383-d82a-b84bdfb39102@ti.com>
Date:   Thu, 21 Jan 2021 09:43:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121153757.kuknwzrzc3xmnase@machine>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/21/21 9:37 AM, Nishanth Menon wrote:
> On 13:48-20210114, Suman Anna wrote:
> [...]
> 
>> +
>> +		icssg1_intc: interrupt-controller@20000 {
>> +			compatible = "ti,icssg-intc";
>> +			reg = <0x20000 0x2000>;
>> +			interrupt-controller;
>> +			#interrupt-cells = <3>;
>> +			interrupts = <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "host_intr0", "host_intr1",
>> +					  "host_intr2", "host_intr3",
>> +					  "host_intr4", "host_intr5",
>> +					  "host_intr6", "host_intr7";
> 
> 
> Could you look at https://pastebin.ubuntu.com/p/rbZrv3sDFk/
> 

Yes, I am aware of these, and I have already noted it in my cover-letter.
"Note that the interrupt nodes will generate a warning about missing
'#address-cells' when compiled using W=2, but adding that currently
fails the dtbs_check, so going with the dt binding compliance."

I have submitted two incremental patches, one against the binding [1] and
another against dts [2].

regards
Suman

[1]
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210115205819.19426-1-s-anna@ti.com/
[2]
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210115210625.20427-1-s-anna@ti.com/
