Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8528271DFF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 19:54:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388509AbfGWRyE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 13:54:04 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:52770 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388503AbfGWRyE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 13:54:04 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NHs1o1108569;
        Tue, 23 Jul 2019 12:54:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563904442;
        bh=x4epcqtJ1Drn8/wnfkdUh46HQkIHZpWkOiI13C+4ohs=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=jxfGkw/U8P8UMKIQD9f8Jjpn8W3rCb069cZ+qNXIWWVYYcI125gLDikMFo6kiQRpx
         hcGhmTjmoFU9WXuIKXhYy41qbhNNmAWyNizWMxh0O1deALFDN4rUu0lxeUodqec7o0
         yk1eFJQUClmtDVm9TQg91FNdbCf3XSsih6lrIRg8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NHs1sC036066
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 23 Jul 2019 12:54:01 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 12:54:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 12:54:01 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NHs118069250;
        Tue, 23 Jul 2019 12:54:01 -0500
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox
 nodes for R5Fs
To:     Nishanth Menon <nm@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-3-s-anna@ti.com>
 <20190723113706.ctrxtpezuknohbj3@kahuna>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
Date:   Tue, 23 Jul 2019 12:54:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723113706.ctrxtpezuknohbj3@kahuna>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

On 7/23/19 6:37 AM, Nishanth Menon wrote:
> On 15:20-20190722, Suman Anna wrote:
>> Add the sub-mailbox nodes that are used to communicate between
>> MPU and the two R5F remote processors present in the MCU domain.
>> The parent mailbox cluster nodes are enabled and the interrupts
>> associated with the Mailbox Cluster User interrupt used by the
>> sub-mailbox nodes are also added. The GIC_SPI interrupt to be
>> used is dynamically allocated and managed by the System Firmware
>> through the ti-sci-intr irqchip driver.
>>
>> The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
>> These sub-mailbox nodes are added to match the hard-coded mailbox
>> configuration used within the TI RTOS IPC software packages. The
>> Cortex R5F processor sub-system is assumed to be running in Split
>> mode, so a sub-mailbox node is used by each of the R5F cores. Only
>> the sub-mailbox node from cluster 0 is used in case of Lockstep
>> mode.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
>>  1 file changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> index 0b3ea2a871ee..317563c995b1 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> @@ -426,7 +426,13 @@
>>  			#mbox-cells = <1>;
>>  			ti,mbox-num-users = <4>;
>>  			ti,mbox-num-fifos = <16>;
>> -			status = "disabled";
>> +			interrupt-parent = <&intr_main_navss>;
>> +			interrupts = <164 0>;
>> +
>> +			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
>> +				ti,mbox-tx = <1 0 0>;
>> +				ti,mbox-rx = <0 0 0>;
>> +			};
> 
> Should'nt this rather be a board specific node? This is completely
> dependent on the pre-defined communication scheme with R5F firmware?

These are the default assignments we are using and inherited by all
derivative boards leveraging the TI RTOS-side firmwares/stacks.
Otherwise, these sub-mailboxes have to be added to every board dts file.
One can always overwrite the values or disable the nodes if they chose a
different configuration.

regards
Suman

> 
>>  		};
>>  
>>  		mailbox0_cluster1: mailbox@31f81000 {
>> @@ -435,7 +441,13 @@
>>  			#mbox-cells = <1>;
>>  			ti,mbox-num-users = <4>;
>>  			ti,mbox-num-fifos = <16>;
>> -			status = "disabled";
>> +			interrupt-parent = <&intr_main_navss>;
>> +			interrupts = <165 0>;
>> +
>> +			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
>> +				ti,mbox-tx = <1 0 0>;
>> +				ti,mbox-rx = <0 0 0>;
>> +			};
>>  		};
>>  
>>  		mailbox0_cluster2: mailbox@31f82000 {
>> -- 
>> 2.22.0
>>
> 

