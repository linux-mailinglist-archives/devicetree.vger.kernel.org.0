Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5CD2375AD
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 15:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726877AbfFFNvu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 09:51:50 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:52964 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726014AbfFFNvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 09:51:50 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56Dpg9E011082;
        Thu, 6 Jun 2019 08:51:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559829102;
        bh=BQtfaNSKuw+WIWaVy6ikWP+DQWdv+WGxHH2Tzr1NZac=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=h1I3usQep2ZUp3znIhr/K3gPIKOAQdM3HYBuEruhQ9L27gN9acgxhKBLO4CaOYDQY
         FGnUL411rSYTVLGwXljerxepJdehcAgrvZpglnS63S5YBetNJxzF+ZxlzV6w7TppSm
         3Zjwjl+wvjX99QTtivPdI0ORf43l/5nHywIyLt5s=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56DpgD3067255
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 6 Jun 2019 08:51:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 08:51:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 08:51:42 -0500
Received: from [10.250.68.219] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56DpfvM072538;
        Thu, 6 Jun 2019 08:51:41 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To:     Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190605163434.23173-1-s-anna@ti.com>
 <acf9cf30-bcd6-76a0-5498-c334c7c43213@ti.com>
 <37a5bf73-2f93-8474-bca1-2e9fae4d6668@ti.com>
From:   "Andrew F. Davis" <afd@ti.com>
Message-ID: <706a01f7-6953-73ec-d72a-62b4aac5dafa@ti.com>
Date:   Thu, 6 Jun 2019 09:51:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <37a5bf73-2f93-8474-bca1-2e9fae4d6668@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/5/19 1:01 PM, Suman Anna wrote:
> On 6/5/19 11:53 AM, Andrew F. Davis wrote:
>> On 6/5/19 12:34 PM, Suman Anna wrote:
>>> Hi Tero,
>>>
>>> The following series adds the DT nodes for the MCU SRAM present within
>>> the MCU domain for both AM65x and J721E SoCs. The first 2 patches enable
>>> the MCU SRAM node to be probed properly on AM65x SoCs, and the third
>>> patch the equivalent for J721E SoCs. The third patch depends on the
>>> base J721E support patch series from Nishanth [1].
>>>
>>> The last patch is not related to MCU SRAM, but adds the ranges for the
>>> R5F cluster that is also present in the MCU domain in preparation for
>>> the R5F nodes.
>>>
>>
>> Why not have this last patch as part of the series adding the R5F nodes?
> 
> The patch can be applied independently as is, no reason to wait until I
> post those.
> 

No reason not to wait either.. plus it would keep related changes in the 
same series.

Anyway, I don't have any problem with this, was just asking as I was not 
sure if I was missing some hidden dependency between the nodes.

Andrew

> regards
> Suman
> 
>>
>> Andrew
>>
>>> regards
>>> Suman
>>>
>>> [1]
>>> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
>>>
>>> Suman Anna (4):
>>>     arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
>>>     arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
>>>     arm64: dts: ti: k3-j721e: Add the MCU SRAM node
>>>     arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes
>>>
>>>    arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 8 ++++++++
>>>    arch/arm64/boot/dts/ti/k3-am65.dtsi             | 6 ++++++
>>>    arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
>>>    3 files changed, 22 insertions(+)
>>>
> 
