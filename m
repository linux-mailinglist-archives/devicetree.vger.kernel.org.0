Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF10F2FEF58
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:45:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732565AbhAUPps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:45:48 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:47142 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731809AbhAUPoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:44:32 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFhaTt078157;
        Thu, 21 Jan 2021 09:43:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243816;
        bh=v21/9rcgJmFFIMxc1h7nQx3w5vdCV1081JkBdoKdHr0=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=kJNdmOwTbOI7orM9cEqPoUQK13zB4moIUYYJJGsKUlPYnNu71hzWYbAorZHOI0nLp
         4G0H+3+7sqJNeG/QerxtgckOAundlEZtSoAajM44JHCW8G5rRlOjodF6d42cpwA/xy
         k6fZUJmAF8/ceN/XC8GVsb+z6qjMjxKopsaI0oiI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFhaep097126
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:43:36 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:43:36 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:43:35 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFhZ0Z122031;
        Thu, 21 Jan 2021 09:43:35 -0600
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG nodes
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
 <20210114194805.8231-3-s-anna@ti.com>
 <20210121153826.uq2nukxggtky4p6c@profane>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <3726d884-2c8d-7a65-e6df-67290534ad13@ti.com>
Date:   Thu, 21 Jan 2021 09:43:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121153826.uq2nukxggtky4p6c@profane>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/21/21 9:38 AM, Nishanth Menon wrote:
> On 13:48-20210114, Suman Anna wrote:
> [...]
> 
>> +		icssg0_intc: interrupt-controller@20000 {
>> +			compatible = "ti,icssg-intc";
>> +			reg = <0x20000 0x2000>;
>> +			interrupt-controller;
>> +			#interrupt-cells = <3>;
>> +			interrupts = <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 257 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 258 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "host_intr0", "host_intr1",
>> +					  "host_intr2", "host_intr3",
>> +					  "host_intr4", "host_intr5",
>> +					  "host_intr6", "host_intr7";
>> +		};
> 
> Same problem here as well..
> Could you look at https://pastebin.ubuntu.com/p/rbZrv3sDFk/
> 

Please see my response on Patch 1, same comment.

regards
Suman
