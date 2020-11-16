Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE4352B4B96
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 17:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730777AbgKPQq0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 11:46:26 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:35234 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727499AbgKPQq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 11:46:26 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AGGkKDV126629;
        Mon, 16 Nov 2020 10:46:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1605545180;
        bh=ogAmG+cft1H1OKDg2+apNuKUvc+EE1eLqMbu6kVoKlY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=VcnBX18rapRRTxJRurdK/hm42k1odPCJ6VznAZFbmcqxhUGnGM4hiZ1OZ0j3Nm+qN
         U8p80AltsRgBi1pR/kkWQWmYYs8GY9koopq/3tNJRf08Tr+/EdhyqhcePfnmwGFiGr
         S4ThUS9uLP55BGngaggov0uaPNb8DNVWcqEf2rGA=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AGGkKLZ083894
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 16 Nov 2020 10:46:20 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 16
 Nov 2020 10:46:19 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 16 Nov 2020 10:46:19 -0600
Received: from [10.250.50.222] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AGGkJka040162;
        Mon, 16 Nov 2020 10:46:19 -0600
Subject: Re: [PATCH 0/3] Add HwSpinlock & Mailbox nodes on J7200 SoCs
To:     Nishanth Menon <nm@ti.com>, Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201026232637.15681-1-s-anna@ti.com>
 <20201027124116.2k5jit7nsgz6mvza@gainfully>
From:   "Bajjuri, Praneeth" <praneeth@ti.com>
Message-ID: <f163e410-3b67-78c4-5506-c9d07bf6da9b@ti.com>
Date:   Mon, 16 Nov 2020 10:46:19 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201027124116.2k5jit7nsgz6mvza@gainfully>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/27/2020 7:41 AM, Nishanth Menon wrote:
> On 18:26-20201026, Suman Anna wrote:
>> Hi Nishanth,
>>
>> The following series adds the HwSpinlock and Mailbox nodes for the J7200
>> series. The sub-mailbox nodes that will be used by the K3 R5F remoteproc
>> nodes are also added to the k3-j7200-som-p0.dtsi file in sync with the
>> convention used on J721E SoCs.
>>
>> Patches are based on 5.10-rc1 and your current staged branch commit
>> 9dcd17be61e4 ("arm64: dts: ti: k3-am65: ringacc: drop
>> ti,dma-ring-reset-quirk")
>>
>> FYI, the HwSpinlock binding has been converted to YAML in 5.10-rc1, but
>> the Mailbox bindings are still in text format.
>>
>> regards
>> Suman
>>
>> Suman Anna (3):
>>    arm64: dts: ti: k3-j7200-main: Add hwspinlock node
>>    arm64: dts: ti: k3-j7200-main: Add mailbox cluster nodes
>>    arm64: dts: ti: k3-j7200-som-p0: Add IPC sub-mailbox nodes
>>
>>   arch/arm64/boot/dts/ti/k3-j7200-main.dtsi   | 114 ++++++++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi |  68 ++++++++++++
>>   2 files changed, 182 insertions(+)
>>
>> -- 
>> 2.28.0
>>
> 
> I dont personally see a specific issue in this series, but will
> appreciate additional reviewed-by before I pick this series up.

Reviewed-by: Praneeth Bajjuri <praneeth@ti.com>

> 
