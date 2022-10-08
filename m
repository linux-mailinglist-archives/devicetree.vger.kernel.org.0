Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 350475F83EC
	for <lists+devicetree@lfdr.de>; Sat,  8 Oct 2022 09:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbiJHHFt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Oct 2022 03:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiJHHFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Oct 2022 03:05:48 -0400
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178088BBA2
        for <devicetree@vger.kernel.org>; Sat,  8 Oct 2022 00:05:45 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.55])
        by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Mkx0H0bmyzHtpS;
        Sat,  8 Oct 2022 15:00:47 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 8 Oct 2022 15:05:43 +0800
Received: from [10.174.178.174] (10.174.178.174) by
 dggpemm500007.china.huawei.com (7.185.36.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sat, 8 Oct 2022 15:05:42 +0800
Subject: Re: [PATCH -next 1/2] of/address: introduce of_address_count() helper
To:     Rob Herring <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>, <frowand.list@gmail.com>,
        <yangyingliang@huawei.com>
References: <20220930090845.503815-1-yangyingliang@huawei.com>
 <20220930090845.503815-2-yangyingliang@huawei.com>
 <20220930215604.GA1090758-robh@kernel.org>
From:   Yang Yingliang <yangyingliang@huawei.com>
Message-ID: <5e8a923e-e67c-883b-c941-b4d2eb916cd3@huawei.com>
Date:   Sat, 8 Oct 2022 15:05:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20220930215604.GA1090758-robh@kernel.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Originating-IP: [10.174.178.174]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 2022/10/1 5:56, Rob Herring wrote:
> On Fri, Sep 30, 2022 at 05:08:44PM +0800, Yang Yingliang wrote:
>> Introduce of_address_count() helper to count the IO resources
>> instead of open-coding it.
>>
>> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
>> ---
>>   drivers/of/address.c       | 11 +++++++++++
>>   include/linux/of_address.h |  7 +++++++
>>   2 files changed, 18 insertions(+)
>>
>> diff --git a/drivers/of/address.c b/drivers/of/address.c
>> index 96f0a12e507c..e32846a9a8d5 100644
>> --- a/drivers/of/address.c
>> +++ b/drivers/of/address.c
>> @@ -848,6 +848,17 @@ int of_address_to_resource(struct device_node *dev, int index,
>>   }
>>   EXPORT_SYMBOL_GPL(of_address_to_resource);
>>   
>> +int of_address_count(struct device_node *np)
>> +{
>> +	struct resource res;
>> +	int count = 0;
>> +
>> +	while (of_address_to_resource(np, count, &res) == 0)
>> +		count++;
>> +
>> +	return count;
>> +}
> EXPORT?
>
> However, I'd just make this always inline instead.
>
>> +
>>   /**
>>    * of_iomap - Maps the memory mapped IO for a given device_node
>>    * @np:		the device whose io range will be mapped
>> diff --git a/include/linux/of_address.h b/include/linux/of_address.h
>> index 45598dbec269..63027e8f3397 100644
>> --- a/include/linux/of_address.h
>> +++ b/include/linux/of_address.h
>> @@ -43,6 +43,7 @@ extern u64 of_translate_dma_address(struct device_node *dev,
>>   extern u64 of_translate_address(struct device_node *np, const __be32 *addr);
>>   extern int of_address_to_resource(struct device_node *dev, int index,
>>   				  struct resource *r);
>> +extern int of_address_count(struct device_node *np);
>>   extern void __iomem *of_iomap(struct device_node *device, int index);
>>   void __iomem *of_io_request_and_map(struct device_node *device,
>>   				    int index, const char *name);
>> @@ -127,6 +128,7 @@ static inline bool of_dma_is_coherent(struct device_node *np)
>>   #ifdef CONFIG_OF
>>   extern int of_address_to_resource(struct device_node *dev, int index,
>>   				  struct resource *r);
>> +extern int of_address_count(struct device_node *np);
> I'm pretty sure Sparc build is going to break. Sparc has its own
> implementation of of_address_to_resource().
Sorry for late replying.

I will make of_address_count() inline in of_address.h in v2, so it will 
compatible with
Sparc.

Thanks,
Yang
>>   void __iomem *of_iomap(struct device_node *node, int index);
>>   #else
>>   static inline int of_address_to_resource(struct device_node *dev, int index,
>> @@ -139,6 +141,11 @@ static inline void __iomem *of_iomap(struct device_node *device, int index)
>>   {
>>   	return NULL;
>>   }
>> +
>> +static inline int of_address_count(struct device_node *np)
>> +{
>> +	return 0;
>> +}
>>   #endif
>>   #define of_range_parser_init of_pci_range_parser_init
>>   
>> -- 
>> 2.25.1
>>
>>
> .
