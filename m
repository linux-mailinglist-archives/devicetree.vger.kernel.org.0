Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E27B6634CDB
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 02:18:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235334AbiKWBS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 20:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235336AbiKWBSg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 20:18:36 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F1C4E8739
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 17:16:47 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id k4so11544152qkj.8
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 17:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WqEXzM63cS/3FbFYxf6HzSoV1Nk+6v/I3hCwHnM1mc8=;
        b=CRrUn8p02f3PSBlp4vuT1h3bDe+0SDYeUZbbKBag3ZDJMGrXjdAlsft0E6VW4P0ARX
         JlI6jo7Gitq8EviUPgtofujCZgYzaIBSa315BM39mf5fNioFYd/mHVuDs5CRnXQABcDx
         BGhxnFP1usxjYVQ/cX4E14I0oI5NcimGhMzkI3mNwd1PGsTNjUSW6qrpdm+A49LA1MsP
         eASLSClXs9Y5DAefG98f0V+h2Et17pc1cA7vVvBNXIPA1zVP0kuOxh33+D3OPr5Hqa01
         PInOiRBM6nOUxB9tVktmgW+d9Q/IN3YiGlZNp6SASr4uVr+SCoRItmGV3MdEONbUMAg6
         iJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WqEXzM63cS/3FbFYxf6HzSoV1Nk+6v/I3hCwHnM1mc8=;
        b=FZtNs3zzmF2SFVUq9sm76DvJAw0W9KSHEWFbQH1LcaBOLhK5oUQ9cZfMcFYC9hzcoV
         QtyB5gJSI5eh4VKL2rfuISvwSrmtKXAoxLd+L79qBn8upFfwXtOORXIjYSGGBxiPdzQG
         SkgcFe07kigLGTIGGJBbVezLkvNt+F1aHmrOjZ9Rtr0uqcPrcetKqxcdSEPK7um3Xyqa
         kRv3sw7HqV0SZJepHMMpC5KY1+FLM5qoV0P+k3PRv5nJ2rl8S4FhzYjh7r03eeTV9dYr
         hsk5kIrMj67Q8fkQ1O3AV2wApEcuFLDa+s3KOdBfzkEYbcpIVJsWSW+cFfNLH4xjHOD3
         QAiw==
X-Gm-Message-State: ANoB5plLPvfgXQGe8IkvqaUu1sTrldXDBi7MD0qlU1c4kGBrcY89KdwX
        Baa+dwSyVWVo0E92TkNevPk=
X-Google-Smtp-Source: AA0mqf7h2iLHOrkX8BEe0V+j4FWTFjSGdn1wyR3X/K5ertkah4B1DMWcfk+PVLGzGQdddl1U+mGHzQ==
X-Received: by 2002:a05:620a:22a2:b0:6fa:2ec7:3e0 with SMTP id p2-20020a05620a22a200b006fa2ec703e0mr6946545qkh.392.1669166205603;
        Tue, 22 Nov 2022 17:16:45 -0800 (PST)
Received: from ?IPV6:2600:1700:2442:6db0:a8b3:6640:ec9a:6963? ([2600:1700:2442:6db0:a8b3:6640:ec9a:6963])
        by smtp.gmail.com with ESMTPSA id o22-20020a05620a2a1600b006eeb3165554sm11440919qkp.19.2022.11.22.17.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 17:16:45 -0800 (PST)
Message-ID: <0be2e48f-4cfe-eed8-16cb-da3f6fbda9d5@gmail.com>
Date:   Tue, 22 Nov 2022 19:16:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2] of: overlay: fix memory leak in add_changeset_node()
Content-Language: en-US
From:   Frank Rowand <frowand.list@gmail.com>
To:     Zeng Heng <zengheng4@huawei.com>, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, liwei391@huawei.com
References: <f0c641ee-b20d-48dd-c65f-2b372eae0b06@huawei.com>
 <20221121035335.809316-1-zengheng4@huawei.com>
 <c89af7df-4e6d-3d0b-d58a-1dbbfe43fcff@gmail.com>
In-Reply-To: <c89af7df-4e6d-3d0b-d58a-1dbbfe43fcff@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/22/22 18:29, Frank Rowand wrote:
> Hi Zeng,
> 
> In the future, please do not send a new version of a patch series as a reply
> to a previous thread.  For people who leave threads collapsed in their email
> client (like me), there is a good chance that the new patch version email
> will not be noticed.
> 
> More below...
> 
> On 11/20/22 21:53, Zeng Heng wrote:
> 
>> When of_changeset_attach_node() returns fail and tchild is
>> over of life cycle which is duplicated by __of_node_dup(),
>> it needs to call of_node_put() to release tchild in
>> error handle route.
> 
> This does not seem correct.  I will explain this in the patch v1
> thread.

After reading throught the code some more, and confusing myself a bit,
I think the proposed patch of adding the of_node_put(tchild) is correct.

I'll run it through my tests and then reply again, hopefully tommorrow.

-Frank

> 
>>
>> Otherwise, there are some memory leak reported about the node:
>>
>> unreferenced object 0xffff88810cd1e800 (size 256):
>>   backtrace:
>>     kmalloc_trace
>>     __of_node_dup
>>     add_changeset_node (inlined)
>>     build_changeset_next_level
>>
>> unreferenced object 0xffff888113721240 (size 16):
>>   backtrace:
>>     __kmalloc_node_track_caller
>>     kstrdup
>>     __of_node_dup
>>     add_changeset_node (inlined)
>>     build_changeset_next_level
>>
>> unreferenced object 0xffff88810a38d400 (size 128):
>>   backtrace:
>>     kmalloc_trace
>>     __of_prop_dup
>>     add_changeset_property
>>     build_changeset_next_level
>>
> 
>> Fixes: 0290c4ca2536 ("of: overlay: rename identifiers to more reflect what they do")
> 
> You have to dig deeper.  The code that introduced the issue is even older:
> 
> 7518b5890d8a of/overlay: Introduce DT overlay support
> 
> -Frank
> 
> 
>> Signed-off-by: Zeng Heng <zengheng4@huawei.com>
>> ---
>>  drivers/of/overlay.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
>> index bd8ff4df723d..a5189a0ec0a3 100644
>> --- a/drivers/of/overlay.c
>> +++ b/drivers/of/overlay.c
>> @@ -436,8 +436,10 @@ static int add_changeset_node(struct overlay_changeset *ovcs,
>>  		of_node_set_flag(tchild, OF_OVERLAY);
>>  
>>  		ret = of_changeset_attach_node(&ovcs->cset, tchild);
>> -		if (ret)
>> +		if (ret) {
>> +			of_node_put(tchild);
>>  			return ret;
>> +		}
>>  
>>  		target_child.np = tchild;
>>  		target_child.in_livetree = false;
> 

