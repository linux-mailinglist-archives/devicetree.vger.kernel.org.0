Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB1AB2FEDF5
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:05:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732513AbhAUPEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:04:23 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:57978 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732501AbhAUPEK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:04:10 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LF3AZC104925;
        Thu, 21 Jan 2021 09:03:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611241390;
        bh=/PL5TfBcKBoyDbotTD4CGnQOR+UF7s9KpFjPJ6hX+TQ=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ET7owDVxpTcf8JdMgTLai8akkQ4y830nWgRkqrjDqNhdyUTegzp9U9kzyBcwihF6u
         j38Zd+q83fM68bvE+B7MHhpjsOXLCdHGoKkRiz2iZivUhX87V1o6qJr7UnrG6eZOCT
         QBiqTN5OK85BZSA+19m1XWP1qotXyHcsBR/L7vBc=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LF3A97087270
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:03:10 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:03:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:03:09 -0600
Received: from [10.250.233.179] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LF36lf044478;
        Thu, 21 Jan 2021 09:03:06 -0600
Subject: Re: [PATCH v2 4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>, Suman Anna <s-anna@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <20210119163927.774-5-d-gerlach@ti.com>
 <f0975045-13ee-ef0e-a5c8-fcd219b17baf@ti.com>
 <20210121142146.g7oqlhu5xxnnpe4u@provider>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <1fd3d4f3-daa7-1a3b-583b-c73f6811b2b3@ti.com>
Date:   Thu, 21 Jan 2021 20:33:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121142146.g7oqlhu5xxnnpe4u@provider>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/21/21 7:51 PM, Nishanth Menon wrote:
> On 18:57-20210121, Vignesh Raghavendra wrote:
>>
>>
>> On 1/19/21 10:09 PM, Dave Gerlach wrote:
>>> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>>
>>> Add the nodes for DMSS INTA, BCDMA and PKTDMA to enable the use of the
>>> DMAs in the system.
>>>
>>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
>>> ---
>>
>> Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
> 
> Is V3 of this series valid as well?
> 
> https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-5-d-gerlach@ti.com/
> 
> 
Sorry, did not notice v3. However this patch has not changed. So, feel
free to carried forward the R-by to v3.
