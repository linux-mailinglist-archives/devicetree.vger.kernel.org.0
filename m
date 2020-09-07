Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3187725FF33
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 18:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729895AbgIGQ3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 12:29:36 -0400
Received: from lhrrgout.huawei.com ([185.176.76.210]:2776 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729796AbgIGObm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 10:31:42 -0400
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
        by Forcepoint Email with ESMTP id AC54F340F250ED2A2380;
        Mon,  7 Sep 2020 15:31:40 +0100 (IST)
Received: from [127.0.0.1] (10.47.2.208) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 7 Sep 2020
 15:31:39 +0100
Subject: Re: [PATCH 2/2] perf: Add Arm CMN-600 PMU driver
To:     Robin Murphy <robin.murphy@arm.com>, <will@kernel.org>,
        <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>
CC:     <devicetree@vger.kernel.org>, <tuanphan@os.amperecomputing.com>,
        <tsahee@amazon.com>, <harb@amperecomputing.com>,
        <james.yang@arm.com>, <alisaidi@amazon.com>
References: <cover.1596631695.git.robin.murphy@arm.com>
 <7f184a18890ef20632eae98b6c105c36f4eb0cd3.1596631695.git.robin.murphy@arm.com>
 <512b3de2-9ece-baaf-ef93-246a8af9464f@huawei.com>
 <c8803e30-7b67-bdb1-30ac-fe1137e4bd93@arm.com>
From:   John Garry <john.garry@huawei.com>
Message-ID: <4d0960ef-7a8c-2d8f-da15-04548354e325@huawei.com>
Date:   Mon, 7 Sep 2020 15:29:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <c8803e30-7b67-bdb1-30ac-fe1137e4bd93@arm.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.47.2.208]
X-ClientProxiedBy: lhreml726-chm.china.huawei.com (10.201.108.77) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>>
>> I had a quick look at the TRM (nearly 1000 pages, wow) for this IP, 
>> and could not see anything obvious to know the implementation id 
>> (similar problem to SMMU PMCG today). Do you know if there is anything 
>> appropiate? Is por_hnf_ppu_iidr any use here?
> 
> Note that PPU is a distinct thing with its own architecture (apparently 
> https://developer.arm.com/documentation/den0051/latest/ if you're 
> interested), so that particular IIDR is merely describing the 
> implementation of the PPU interface, which AFAICS is not necessarily 
> unique to CMN-600. In terms of the PMU and CMN overall there is no 
> architecture to speak of, the implementation just is what it is :)
> 
> I'd expect that some future interconnect IPs are likely to be similar 
> enough to share most of this driver, but those should get their own 
> top-level compatibles since they will not be CMN-600. Thus I don't 
> believe that identification is going to be too much of a concern.
> 
>> Just a couple of more questions for now...
>>
>> [snip]
>>
>>> +
>>> +static struct attribute *arm_cmn_event_attrs[] = {
>>> +    CMN_EVENT_DTC(cycles),
>>> +

[...]

>>> +
>>> +    NULL
>>> +};
>>
>> Just wondering how does "perf list" look when you have multiple 
>> instances of the device in the system?
> 
> Probably a giant mess, since I assume every (relevant) event should be 
> listed for each instance, much like CPU events on big.LITTLE systems, 
> and uncore events on many others (certainly most of the xgene_pmu events 
> on my eMAG workstation are repeated up to 8 times).

Yeah, so that's one thing we would solve with my "system PMU" perf 
support, such that we can have a single per-event alias listed for 
instances of that PMU.

So out of curiousity, for the big.LITTLE systems which you have seen 
with this issue, which cores do they have?

> 
>> [snip]

>>> +    };
>>> +
>>> +    if (atomic_fetch_inc(&id) == 0) {
>>> +        name = "arm_cmn";
>>> +    } else {
>>> +        name = devm_kasprintf(cmn->dev, GFP_KERNEL, "arm_cmn_%d", 
>>> atomic_read(&id));
>>
>> How is userspace supposed to know which device is which when we have 
>> multiple instances? I mean, doesn't this depend on arbitary probe 
>> ordering?
> 
> Right, I had it in my head that there should be enough information in 
> sysfs to link the PMU device back to its parent platform device, but 
> apparently that isn't the case :(
> 
> Furthermore, you've now got me thinking I might want to rejig the naming 
> scheme anyway - if I did have two instances named "foo" and "foo_1", is 
> perf tool going to interpret "-e foo/event/" as specifying a common 
> prefix and create the event on both PMUs even if I only wanted it on the 
> first one?

It should just create the event on the PMU "foo", and not also "foo_1". 
I think.

As for naming, as you know, for the SMMUv3 PMU driver we suffixed the HW 
base register address for the name - not ideal, but at least which PMU 
is which can be determined from userspace. Or for this driver case, 
maybe ACPI _UID could be used instead.

Thanks,
john
