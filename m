Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F10FB25E9E
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 09:21:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728608AbfEVHVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 03:21:23 -0400
Received: from hqemgate15.nvidia.com ([216.228.121.64]:10060 "EHLO
        hqemgate15.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728501AbfEVHVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 03:21:23 -0400
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
        id <B5ce4f86f0000>; Wed, 22 May 2019 00:21:19 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate101.nvidia.com (PGP Universal service);
  Wed, 22 May 2019 00:21:22 -0700
X-PGP-Universal: processed;
        by hqpgpgate101.nvidia.com on Wed, 22 May 2019 00:21:22 -0700
Received: from [10.24.229.31] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 07:21:20 +0000
Subject: Re: [PATCH] of: resered-memory: ignore disabled memory-region nodes
To:     Thierry Reding <treding@nvidia.com>
CC:     <pantelis.antoniou@konsulko.com>, <frowand.list@gmail.com>,
        <devicetree@vger.kernel.org>, <vdumpa@nvidia.com>,
        <snikam@nvidia.com>
References: <1558503353-13179-1-git-send-email-puneets@nvidia.com>
 <1558503353-13179-2-git-send-email-puneets@nvidia.com>
 <20190522063812.GA24329@ulmo>
From:   puneet saxena <puneets@nvidia.com>
Message-ID: <2f89938b-7795-3d93-b23f-4eca2b678483@nvidia.com>
Date:   Wed, 22 May 2019 12:51:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190522063812.GA24329@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1558509679; bh=6tW5N3+OCYTm9eciD4JP3qAVfuqvmmBtrqKdrETHXpA=;
        h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
         User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
         X-ClientProxiedBy:Content-Type:Content-Transfer-Encoding:
         Content-Language;
        b=U15Gl1emoQYGK0KFP32k/FhMWU3RocvVdC4XLI/kLAlWZPmIPmNM78zsKeGqrBsDm
         oxpJQ5II1xOH0BLEqdBUPDBqjAgE2rguc+FBzN77vW6zU4gstkJp6pcWha7SXdyh9x
         sxa/hNUhdnRRTlQLcB/LYU3umzPCOrmb3sVdDXdzJTDStAtlbN1Who0odOv7REb6Hu
         4W0dxflEo5BMCa4CFxABKPZChTTX0HHZtDjWJ/rj/QtrzY/joKkggFNnB5xgLRGJRC
         8N+qHf6A3cmbJLdM21kIFSiUecp3uqaphoTu089tIThiv0YizNdcPrqDv8tcSIaw8n
         kT+lxelmCUvhQ==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Yes, of_device_is_available() will work here. Will incorporate in next PS.

Thanks.

On 22/05/19 12:08 PM, Thierry Reding wrote:
> On Wed, May 22, 2019 at 11:05:53AM +0530, Puneet Saxena wrote:
>> From: Krishna Reddy <vdumpa@nvidia.com>
>>
>> Ignore disabled nodes in the memory-region nodes list and continue
>> to initialize the rest of enabled nodes.
>>
>> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
>> ---
>>   drivers/of/of_reserved_mem.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
>> index 1977ee0adcb1..58d95d774e3b 100644
>> --- a/drivers/of/of_reserved_mem.c
>> +++ b/drivers/of/of_reserved_mem.c
>> @@ -314,6 +314,7 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
>>   	struct device_node *target;
>>   	struct reserved_mem *rmem;
>>   	int ret;
>> +	const char *status;
>>   
>>   	if (!np || !dev)
>>   		return -EINVAL;
>> @@ -322,6 +323,10 @@ int of_reserved_mem_device_init_by_idx(struct device *dev,
>>   	if (!target)
>>   		return -ENODEV;
>>   
>> +	status = of_get_property(target, "status", NULL);
>> +	if (status && strcmp(status, "okay") != 0 && strcmp(status, "ok") != 0)
>> +		return 0;
>> +
> Does of_device_is_available() not work? Other than that, looks fine to
> me.
>
> Thierry

-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------
