Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8342EAF77
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 16:55:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbhAEPx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 10:53:58 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56726 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726020AbhAEPx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 10:53:57 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 105Fr87e076209;
        Tue, 5 Jan 2021 09:53:08 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609861988;
        bh=ceO7zWY/m7hCgDY/vdsiI1w7YJM7xROteniZt9+dT70=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=bOGMi/kta1qhbiyCuoPLOftn8DUpAsRFJs9by8XfoGctW6hvzSC3rRWI8Uo3MHfsX
         uqL+QY3y6h9EAcChR0qIuBUpSxSMdcd7+fO4jsyrO9tO2ZnT+32Fq5BRupDlUTbSsR
         u2Zvy/XX34q+b7cH/hb0BVuWfxeCI4UUHDJZ5us0=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 105Fr8x6100430
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 5 Jan 2021 09:53:08 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 Jan
 2021 09:53:08 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 Jan 2021 09:53:08 -0600
Received: from [128.247.81.242] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 105Fr6GH066804;
        Tue, 5 Jan 2021 09:53:06 -0600
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
To:     Nishanth Menon <nm@ti.com>
CC:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
 <9ef76d15-46e5-884d-2b00-3228c46a73ac@ti.com>
 <d62d6ce5-b346-d734-0bda-d2dd0d360d5c@ti.com>
 <c8df15fa-a41f-72b2-6b9d-9e27cc449e31@ti.com>
 <20210105151220.vy42nw7uwv5ax3z6@library>
From:   Dave Gerlach <d-gerlach@ti.com>
Message-ID: <8a3c7296-f372-5392-2e6e-2cc6e0510adf@ti.com>
Date:   Tue, 5 Jan 2021 09:53:06 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210105151220.vy42nw7uwv5ax3z6@library>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 1/5/21 9:12 AM, Nishanth Menon wrote:
> On 22:02-20210104, Dave Gerlach wrote:
>>>> This is atleast missing the ranges for On-Chip SRAM and the R5FSS, but those can
>>>> always be added incrementally as well.
>>
>> Yes, I think they should be added incrementally once a user is present.
>>
> 
> 
> Most of the driver dependencies are resolved in v5.11-rc1. So, you
> should be able to add a lot of devices (aka users) instead of making
> this a barebones dts as the first introduction - I see no benefit of
> things coming in piece meal - other than creating all kind of dependency
> mayhem that I don't want to deal with.
> 
> Please make sure that all nodes for all peripherals that can be
> introduced in v5.11-rc1 is part of this introduction of device.
> 

Yeah that's no issue, I will add those that Suman referenced for v2 and
then that covers every entry I am currently aware of.

Regards,
Dave
