Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 366483A1664
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 16:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237182AbhFIODe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 10:03:34 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:41150 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237151AbhFIODd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 10:03:33 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 159E1a7j047790;
        Wed, 9 Jun 2021 09:01:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623247296;
        bh=Tw1eN5lgDE9D28pNImTTEUKJXCMh0POoZIKxPcndiVk=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=WjJIFiBGTyeJUwvX05Zi04K6/eorqEyljyt90QbADLRMyy0JHPeHQGF0rjPr/GlNI
         yC9I5QQc3ele8/uO8EiVKWBI53vBy9Wqy7jfMq0ERLXfZ6KBfI5RVSSnVxlCIW/oPi
         5y4wneFxPd2WyduzX4esTfWTi335YQkJVXcmU/hg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 159E1a7O012039
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 9 Jun 2021 09:01:36 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 9 Jun
 2021 09:01:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 9 Jun 2021 09:01:36 -0500
Received: from [10.250.234.148] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 159E1YOJ083663;
        Wed, 9 Jun 2021 09:01:35 -0500
Subject: Re: [PATCH 4/4] arm64: dts: ti: k3-am642-evm/sk: Reserve some on-chip
 SRAM for R5Fs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210528144718.25132-1-s-anna@ti.com>
 <20210528144718.25132-5-s-anna@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <6035b723-ae52-3674-728d-b335b7d07982@ti.com>
Date:   Wed, 9 Jun 2021 19:31:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210528144718.25132-5-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Suman,

On 5/28/21 8:17 PM, Suman Anna wrote:
> +&oc_sram {
> +	main_r5fss0_core0_sram: r5f-sram@40000 {
> +		reg = <0x40000 0x40000>;
> +	};
> +
> +	main_r5fss0_core1_sram: r5f-sram@80000 {
> +		reg = <0x80000 0x40000>;
> +	};
> +
> +	main_r5fss1_core0_sram: r5f-sram@c0000 {
> +		reg = <0xc0000 0x40000>;
> +	};
> +
> +	main_r5fss1_core1_sram: r5f-sram@100000 {
> +		reg = <0x100000 0x40000>;
> +	};
> +};
> +

Now that ATF is being moved to end of SRAM[1], is it possible to move
these allocations closer to that ATF reserved location?

This will provide one large contiguouos memory at the beginning of SRAM
which can be used as generic pool. Right now there are two
dis-contiguous pool (256K@0 and ~384K@140000) which is not very
efficient use of SRAM.


[1]
http://kahuna.dhcp.ti.com:8000/project/arm64-ti-dts/patch/20210607133806.18158-1-a-govindraju@ti.com/
