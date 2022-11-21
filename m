Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B56EF631823
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbiKUBUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:20:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbiKUBUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:20:37 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB5E248D6
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:20:36 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id p184so7646287iof.11
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hlZZGdfGUzG2gK70RSJYeTVSNv7PMnsb/jXr7GhMwVo=;
        b=TzsHl/jq/BDymTuLwy4sXyuSjWgW6dPBUXPx7+jcAKVeta1YyDbe9GKLaLXvk5j9QY
         /VNOSeYXUVLKVVTZtvUi5/zEZnT1PCOgXqFx1njamIPIwH1KcB8Uw1GxeOgDY5KqteRo
         O6wvb35mQIABKfymY7TYukDvpM5ahNqnUyc5BgVSC2h2p+/1SUC5nuquV65iw4PGgew4
         HQr7acAywvUj9JsfvszO4KKaGTogA+M4svn1Ed0th+HykRsIN814CxXMcr0hDorExOy/
         o29zoqg7oQ0m2X1mqZU6ZiPjynS3qoUM8y4G5wc7fe5Hj3BLurvZg1i8SxtkwRODj+16
         KkFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hlZZGdfGUzG2gK70RSJYeTVSNv7PMnsb/jXr7GhMwVo=;
        b=rTk8UCo46DwPDYihPXlHHIILs5gWYbI+bIlWMew0t2L/uvkcAWg8pgXO6xFd5t33rS
         Lurw8Um7TC/U4cbC6IyYiO1i3kv21gCx2S1G9rnvfOYavAE2HAmX4sKOxOOJ04sB/d+F
         RH1Gjjw8juAb/KXctRa4ZuTAmjZBi4oO5e1JMJJJHlr//YTKKKf2AzEoDVtBf/ozv3z8
         j/8SsozDmtI0UT9vadV1PbXl982CXEYn2C7gY1qD/m1mcNp9Fwz7SDJA2+YRPncq8auQ
         3EocTk76hCJ5x9aBRoiZggfKs6d7z7YdCp01VaOp2jVzs34HJSRgZ5anW0RFdCFE991X
         O/Tw==
X-Gm-Message-State: ANoB5pkNiAI7m3Pro20Aqt0fxkDHj1tgdglRNQ6BbWSOnbjYfUJxBFxj
        +pFXLB64ObUzjiet1PgwIbknuRC3SVY=
X-Google-Smtp-Source: AA0mqf5HbAVe8/f+bYJ1RwKI/ZLpJz2wJGDmbzhCJfNuAiOB+Zb1JAiu7c7Jg/nW9QtTO4brj5esXA==
X-Received: by 2002:a05:6638:4910:b0:375:a56b:aedf with SMTP id cx16-20020a056638491000b00375a56baedfmr7209840jab.276.1668993636105;
        Sun, 20 Nov 2022 17:20:36 -0800 (PST)
Received: from ?IPV6:2600:1700:2442:6db0:799e:a547:4c2f:ec44? ([2600:1700:2442:6db0:799e:a547:4c2f:ec44])
        by smtp.gmail.com with ESMTPSA id z26-20020a027a5a000000b00374ff5df5ccsm3673035jad.167.2022.11.20.17.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Nov 2022 17:20:35 -0800 (PST)
Message-ID: <d86bbab4-e3d4-83c3-872b-ce4d61e8ced6@gmail.com>
Date:   Sun, 20 Nov 2022 19:20:34 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] of: property: fix unbalanced of node refcount in
 of_fwnode_get_reference_args()
Content-Language: en-US
To:     Yang Yingliang <yangyingliang@huawei.com>,
        devicetree@vger.kernel.org
Cc:     sakari.ailus@linux.intel.com, rafael.j.wysocki@intel.com,
        robh+dt@kernel.org
References: <20221117145656.395056-1-yangyingliang@huawei.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <20221117145656.395056-1-yangyingliang@huawei.com>
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

On 11/17/22 08:56, Yang Yingliang wrote:

Change the subject from:

of: property: fix unbalanced of node refcount in of_fwnode_get_reference_args()

to:

of: property: decrement node refcount in of_fwnode_get_reference_args()


Change patch comment:

> I got the the following report:
> 
>   OF: ERROR: memory leak, expected refcount 1 instead of 4,
>   of_node_get()/of_node_put() unbalanced - destroy cset entry:
>   attach overlay node /i2c/pmic@34/adc
> 
> In of_fwnode_get_reference_args(), the 'of_args.np' returned
> from of_parse_phandle_with_args(), its refcount is increased
> in of_phandle_iterator_next(), if args is null, the refcount
> of 'of_args.np' need be put to avoid leak.

to:

In of_fwnode_get_reference_args(), the refcount of of_args.np has been
incremented in the case of successful return from
of_parse_phandle_with_args() or of_parse_phandle_with_fixed_args().

Decrement the refcount if of_args is not returned to the caller of
of_fwnode_get_reference_args().


> 
> Fixes: 3e3119d3088f ("device property: Introduce fwnode_property_get_reference_args")
> Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
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

Reviewed by visual inspection.  Did not do my normal build, test, check for
warnings.

Reviewed-by: Frank Rowand <frowand.list@gmail.com>
