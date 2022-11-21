Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC25631878
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 03:06:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229776AbiKUCGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 21:06:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiKUCGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 21:06:08 -0500
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 623E513D21
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 18:06:07 -0800 (PST)
Received: by mail-il1-x12d.google.com with SMTP id z15so5078738ilp.4
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 18:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lGd0d+3uh7RZPmQW5QL9EBgziJDE/xxwIpDJmldBqMA=;
        b=bO+t0SV4QoLD0DDYyyRdE0sxKzolLg8O/4+tNeFYnodh38oTPL08ia4YqOYSJTeTO+
         BUjUhwhcKSqsVRkenvSyRgdCP8q+BIFAzHXET5NiL7tykMoPH44bKe+Svc14RXtQ8VEy
         klWO5csRpEYvIuTqO9YLCb/rrAu38/mjbEwr1qlLwXPfHHubVoWN6R5oMX2ashCbteqE
         PEhHWH/czOe9h/2D3fix4hs5/bNKQG9nMtXdp/z8lHlPfZpNn0AcfpRS4jRmzqL6tExV
         BWrSq2OcRKnryng5WGUqNZ6UgRLc4yO1RsshscXGasZpYyQheY/xM0Ep3VQWyGScOyBT
         WkzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lGd0d+3uh7RZPmQW5QL9EBgziJDE/xxwIpDJmldBqMA=;
        b=qimSxougzIqPrnmhiTLwKC3LlCuCwN9iCsynEOu+tdlysXdSv5Xi58YXMg7tkXx8Gr
         ruQNYS5mKh1KbC2jse0lm4xTRcZmn+zIPny7LsU2NqB/UQBSCPLkDXYhOhl2TJfoMib8
         6xkw8A8oylVUrQ+ZoeWPs4TQqfpFR4+xgWE38V1uV14YF/KTUpyw6EuUbeUpDlQvbK7J
         cMo3dYOWIjMd0AifGzW+yPD2lgqfj0gvcUMPCWhfq5lPVOpyJ06Yxmpxvql0RyoO/FfA
         X+OJXJepFSlL3FSQdiw37N6yFyK4uWwzaefbB7WseS0UVdzQEAQ/YCcsrrq07nPWKvGo
         9xsg==
X-Gm-Message-State: ANoB5pnj4OkCzHGs7CkGpYRxx0KywqMcAwgkNZJXs90IE4j67xqVAbD6
        6H38X0g19I0kJ/d9Q0X5shc=
X-Google-Smtp-Source: AA0mqf7+IKqP+Vqh4/rBtbjXeopd2ueYi3m7mp3JHMrI+eBk8fBIn9eN/zauE0Yay6PAxlVSNMj1nQ==
X-Received: by 2002:a05:6e02:1409:b0:300:f124:867e with SMTP id n9-20020a056e02140900b00300f124867emr528044ilo.44.1668996366755;
        Sun, 20 Nov 2022 18:06:06 -0800 (PST)
Received: from ?IPV6:2600:1700:2442:6db0:799e:a547:4c2f:ec44? ([2600:1700:2442:6db0:799e:a547:4c2f:ec44])
        by smtp.gmail.com with ESMTPSA id c9-20020a056638028900b00349bd096a82sm3766599jaq.109.2022.11.20.18.06.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Nov 2022 18:06:06 -0800 (PST)
Message-ID: <412db8f1-eea5-4029-e1d0-0cc73b5be80a@gmail.com>
Date:   Sun, 20 Nov 2022 20:06:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2] of: property: decrement node refcount in
 of_fwnode_get_reference_args()
Content-Language: en-US
To:     Yang Yingliang <yangyingliang@huawei.com>,
        devicetree@vger.kernel.org
Cc:     sakari.ailus@linux.intel.com, rafael.j.wysocki@intel.com,
        robh+dt@kernel.org
References: <20221121014200.3560742-1-yangyingliang@huawei.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20221121014200.3560742-1-yangyingliang@huawei.com>
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

On 11/20/22 19:42, Yang Yingliang wrote:

Thanks for the quick update to v2.

This part of the patch comment should also be removed, because (if I understand
correctly) it does not occur in the existing tree, only if a proposed patch is
applied:

> I got the the following report:
> 
>   OF: ERROR: memory leak, expected refcount 1 instead of 4,
>   of_node_get()/of_node_put() unbalanced - destroy cset entry:
>   attach overlay node /i2c/pmic@34/adc

Am I correct?  In any case I appreciate the error report which
provides useful context for the underlying problem.

-Frank

> 
> In of_fwnode_get_reference_args(), the refcount of of_args.np has
> been incremented in the case of successful return from
> of_parse_phandle_with_args() or of_parse_phandle_with_fixed_args().
> 
> Decrement the refcount if of_args is not returned to the caller of
> of_fwnode_get_reference_args().
> 
> Fixes: 3e3119d3088f ("device property: Introduce fwnode_property_get_reference_args")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
> Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> Reviewed-by: Frank Rowand <frowand.list@gmail.com>
> ---
> v1 -> v2:
>   Update title and commit message that suggested by Frank.
> ---
>  drivers/of/property.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 967f79b59016..134cfc980b70 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -993,8 +993,10 @@ of_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
>  						       nargs, index, &of_args);
>  	if (ret < 0)
>  		return ret;
> -	if (!args)
> +	if (!args) {
> +		of_node_put(of_args.np);
>  		return 0;
> +	}
>  
>  	args->nargs = of_args.args_count;
>  	args->fwnode = of_fwnode_handle(of_args.np);

