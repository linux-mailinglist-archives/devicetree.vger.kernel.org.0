Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6530F634D58
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 02:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234320AbiKWBmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 20:42:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbiKWBl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 20:41:59 -0500
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 950D41BE8D
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 17:41:57 -0800 (PST)
Received: from kwepemi500024.china.huawei.com (unknown [172.30.72.53])
        by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NH3kY67bzzRpRp;
        Wed, 23 Nov 2022 09:41:25 +0800 (CST)
Received: from [10.174.179.163] (10.174.179.163) by
 kwepemi500024.china.huawei.com (7.221.188.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 09:41:54 +0800
Message-ID: <027900a6-f983-3356-c83c-a34f8cf0cfec@huawei.com>
Date:   Wed, 23 Nov 2022 09:41:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2] of: overlay: fix memory leak in add_changeset_node()
Content-Language: en-US
To:     Frank Rowand <frowand.list@gmail.com>, <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <liwei391@huawei.com>
References: <f0c641ee-b20d-48dd-c65f-2b372eae0b06@huawei.com>
 <20221121035335.809316-1-zengheng4@huawei.com>
 <c89af7df-4e6d-3d0b-d58a-1dbbfe43fcff@gmail.com>
From:   Zeng Heng <zengheng4@huawei.com>
In-Reply-To: <c89af7df-4e6d-3d0b-d58a-1dbbfe43fcff@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.174.179.163]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500024.china.huawei.com (7.221.188.100)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2022/11/23 8:29, Frank Rowand wrote:
> Hi Zeng,
>
> In the future, please do not send a new version of a patch series as a reply
> to a previous thread.  For people who leave threads collapsed in their email
> client (like me), there is a good chance that the new patch version email
> will not be noticed.
>
> More below...

Get it. Thanks for your suggestion.

With B. R.,

Zeng Heng

>
> On 11/20/22 21:53, Zeng Heng wrote:
>
>> When of_changeset_attach_node() returns fail and tchild is
>> over of life cycle which is duplicated by __of_node_dup(),
>> it needs to call of_node_put() to release tchild in
>> error handle route.
> This does not seem correct.  I will explain this in the patch v1
> thread.
>
>> Otherwise, there are some memory leak reported about the node:
>>
>> unreferenced object 0xffff88810cd1e800 (size 256):
>>    backtrace:
>>      kmalloc_trace
>>      __of_node_dup
>>      add_changeset_node (inlined)
>>      build_changeset_next_level
>>
>> unreferenced object 0xffff888113721240 (size 16):
>>    backtrace:
>>      __kmalloc_node_track_caller
>>      kstrdup
>>      __of_node_dup
>>      add_changeset_node (inlined)
>>      build_changeset_next_level
>>
>> unreferenced object 0xffff88810a38d400 (size 128):
>>    backtrace:
>>      kmalloc_trace
>>      __of_prop_dup
>>      add_changeset_property
>>      build_changeset_next_level
>>
>> Fixes: 0290c4ca2536 ("of: overlay: rename identifiers to more reflect what they do")
> You have to dig deeper.  The code that introduced the issue is even older:
>
> 7518b5890d8a of/overlay: Introduce DT overlay support
>
> -Frank
>
>
>> Signed-off-by: Zeng Heng <zengheng4@huawei.com>
>> ---
>>   drivers/of/overlay.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
>> index bd8ff4df723d..a5189a0ec0a3 100644
>> --- a/drivers/of/overlay.c
>> +++ b/drivers/of/overlay.c
>> @@ -436,8 +436,10 @@ static int add_changeset_node(struct overlay_changeset *ovcs,
>>   		of_node_set_flag(tchild, OF_OVERLAY);
>>   
>>   		ret = of_changeset_attach_node(&ovcs->cset, tchild);
>> -		if (ret)
>> +		if (ret) {
>> +			of_node_put(tchild);
>>   			return ret;
>> +		}
>>   
>>   		target_child.np = tchild;
>>   		target_child.in_livetree = false;
