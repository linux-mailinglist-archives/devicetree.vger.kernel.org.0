Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 678542A9791
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 15:26:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726317AbgKFO0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 09:26:23 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:44536 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726010AbgKFO0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Nov 2020 09:26:23 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0A6EQHKS004985;
        Fri, 6 Nov 2020 08:26:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1604672777;
        bh=tZdFBz0aT3J6OyDLVBbI6bykmdXJVAt1+uje5SUJfAk=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=QC5WB4KsN9mfQRlRYidiROPHqHofU3hb70ATGZH2pjL9LnAcdAj8EuuhTo885SFJ8
         IbSFdayrzcpFZKOpl5Xm9VqcXn4g0AgLL5teFbxKm2Dn35yAZ9hH4Q+SBMIWqgmfj8
         ZKepkzEt5mVQ20chSp/bCLwCfplskTPu1+uh5c1Q=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0A6EQHVt072336
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 6 Nov 2020 08:26:17 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 6 Nov
 2020 08:26:17 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 6 Nov 2020 08:26:17 -0600
Received: from [10.250.34.171] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0A6EQHoq008378;
        Fri, 6 Nov 2020 08:26:17 -0600
Subject: Re: [PATCH 0/8] Add R5F nodes on TI K3 AM65x and J721E SoCs
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201029033802.15366-1-s-anna@ti.com>
 <547ca06c-9895-b164-60ab-5909e6c78983@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <f0caafff-9825-ae7b-cffd-69efdcb8982b@ti.com>
Date:   Fri, 6 Nov 2020 08:26:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <547ca06c-9895-b164-60ab-5909e6c78983@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/6/20 5:43 AM, Lokesh Vutla wrote:
> 
> 
> On 29/10/20 9:07 am, Suman Anna wrote:
>> Hi Nishanth,
>>
>> The TI K3 R5F remoteproc driver and bindings were merged into 5.10-rc1,
>> and this series adds the follow-on base dt nodes for the R5F remote
>> processors on TI K3 AM65x and J721E SoCs. Additional memory nodes were
>> also added to boot these processors successfully on applicable TI K3
>> AM65x and J721E EVM boards. The series uses previously accepted mailbox
>> nodes.
>>
>> The patches follow slightly different convention between AM65x and
>> J721E. The reserved-memory nodes are added directly in the relevant
>> board dts file for AM65x boards, while they are added in the common
>> k3-j721e-som-p0.dtsi file for J721E SoCs following the similar addition
>> of K3 C66x and C71x DSP nodes in 5.10-rc1.
>>
>> Patches apply on top of your 5.10-rc1 based staging branch.
>>
>> I have validated the IPC functionality using System Firmware v2020.04a
>> and corresponding IPC example firmwares. 
> 
> 
> Series looks good to me.
> 
> Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
>

Thanks Lokesh.


> On a side note: any reason not to add R5f nodes for J7200?

J7200 nodes would have to wait until the corresponding dt-bindings and driver
updates make it into mainline. They do use different compatibles, and I will
post them in the next couple of weeks.

regards
Suman
