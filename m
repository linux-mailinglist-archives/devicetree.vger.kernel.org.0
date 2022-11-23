Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F2C5634BAE
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 01:30:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234815AbiKWA3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 19:29:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235278AbiKWA3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 19:29:31 -0500
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87246C67C7
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 16:29:30 -0800 (PST)
Received: by mail-qv1-xf34.google.com with SMTP id n12so5170190qvr.11
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 16:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3qquV2nuUEVcp8vQuRuWTRiyOTOCpp+Dy+eUwvzbQQ=;
        b=PARMchSCdCUSRw7KSQ2RD3UCG/nx3zCuexWFfF5+b/Dj0+UmFq0lSavH3EHfT5tldK
         kU4DN0X/Vl8jJ+2D5xAGc5WFzQARQImOTZMjv/4jJeIgXgAlRlb9VqO6iwAZkoJl2X/K
         RMNkLQehAh+Jqirpar0kS+gKPis39kbiutyeH7qOR8s2WHBcJlU3nkzx3pT31fcrnYPk
         /Vcdal3hgSudtBN6Qwmf956T5AACcIzWUSYLXqJykCigXUbOlWcytE/Qt7lgmYtfnJTp
         WLJXGNKuj2Rzy7zqTmR5D9EW6rQ0kPFRUCDGGpy0JmH0BEsFFqz/dhhL0S9m+cNc21+J
         Kxgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3qquV2nuUEVcp8vQuRuWTRiyOTOCpp+Dy+eUwvzbQQ=;
        b=1qHw4L23reI09TvlFQirXXUPoYE8ubPEJTeVVLr7L6PS0/SPSO6+exChR9iDhOjGHP
         8+cGf0nnIQzORd/uS6lFtAd+wUzEnJ2lnSkrXTYStzRiq3Lhdbi3h51H+qRHkxsYvNTq
         0II6tWF1H64SNPwZLmGnBBgR25vY8JDVfbA3PGYV2Sh8lyukXQ0mxpq5PTwkAe7fL3Tg
         /tyGdENBTvHkE6+hQdbhuPdGVXAqaDDl0njvCyGr/PE3VCdgHSc9gOLVuhcf+1kPMiow
         SqUTEOMJ8npT/+KXobVwShTzrBlQNqiYFKBwGiVFNoe16CMuO0ApgYVKdlyCyLdwWanq
         SDng==
X-Gm-Message-State: ANoB5pk5yoDQEnPVwS3rgVkBli8fSxwTUOISpucZrSwjG0yROedOzPBf
        9kSWxl49n/UMKZ1ZfSzRAlp0QEqw5WM=
X-Google-Smtp-Source: AA0mqf4Aee+04ocKRf4+Z88mvhrdSoPZ3di+9JXGuEfGjS9vO+IpNVNYz4sde6JB7uxyUAwsc/JqkQ==
X-Received: by 2002:a05:6214:3584:b0:4c6:c222:1a08 with SMTP id nn4-20020a056214358400b004c6c2221a08mr3477870qvb.59.1669163369725;
        Tue, 22 Nov 2022 16:29:29 -0800 (PST)
Received: from ?IPV6:2600:1700:2442:6db0:a8b3:6640:ec9a:6963? ([2600:1700:2442:6db0:a8b3:6640:ec9a:6963])
        by smtp.gmail.com with ESMTPSA id f14-20020a05622a114e00b003434d3b5938sm9093345qty.2.2022.11.22.16.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 16:29:29 -0800 (PST)
Message-ID: <c89af7df-4e6d-3d0b-d58a-1dbbfe43fcff@gmail.com>
Date:   Tue, 22 Nov 2022 18:29:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2] of: overlay: fix memory leak in add_changeset_node()
Content-Language: en-US
To:     Zeng Heng <zengheng4@huawei.com>, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, liwei391@huawei.com
References: <f0c641ee-b20d-48dd-c65f-2b372eae0b06@huawei.com>
 <20221121035335.809316-1-zengheng4@huawei.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20221121035335.809316-1-zengheng4@huawei.com>
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

Hi Zeng,

In the future, please do not send a new version of a patch series as a reply
to a previous thread.  For people who leave threads collapsed in their email
client (like me), there is a good chance that the new patch version email
will not be noticed.

More below...

On 11/20/22 21:53, Zeng Heng wrote:

> When of_changeset_attach_node() returns fail and tchild is
> over of life cycle which is duplicated by __of_node_dup(),
> it needs to call of_node_put() to release tchild in
> error handle route.

This does not seem correct.  I will explain this in the patch v1
thread.

> 
> Otherwise, there are some memory leak reported about the node:
> 
> unreferenced object 0xffff88810cd1e800 (size 256):
>   backtrace:
>     kmalloc_trace
>     __of_node_dup
>     add_changeset_node (inlined)
>     build_changeset_next_level
> 
> unreferenced object 0xffff888113721240 (size 16):
>   backtrace:
>     __kmalloc_node_track_caller
>     kstrdup
>     __of_node_dup
>     add_changeset_node (inlined)
>     build_changeset_next_level
> 
> unreferenced object 0xffff88810a38d400 (size 128):
>   backtrace:
>     kmalloc_trace
>     __of_prop_dup
>     add_changeset_property
>     build_changeset_next_level
> 

> Fixes: 0290c4ca2536 ("of: overlay: rename identifiers to more reflect what they do")

You have to dig deeper.  The code that introduced the issue is even older:

7518b5890d8a of/overlay: Introduce DT overlay support

-Frank


> Signed-off-by: Zeng Heng <zengheng4@huawei.com>
> ---
>  drivers/of/overlay.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index bd8ff4df723d..a5189a0ec0a3 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -436,8 +436,10 @@ static int add_changeset_node(struct overlay_changeset *ovcs,
>  		of_node_set_flag(tchild, OF_OVERLAY);
>  
>  		ret = of_changeset_attach_node(&ovcs->cset, tchild);
> -		if (ret)
> +		if (ret) {
> +			of_node_put(tchild);
>  			return ret;
> +		}
>  
>  		target_child.np = tchild;
>  		target_child.in_livetree = false;

